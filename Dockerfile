# Use ROS Humble as the base image
FROM ros:humble-ros-base

ARG GIT_BRANCH="develop"
ARG BUILD_DATE="NULL"
ARG VERSION="NULL"
ARG VCS_REF="NULL"
ENV ROS_DISTRO=humble

RUN mkdir -p /root/c1t_ws/src/navigation2_extensions

# Set the working directory
WORKDIR /root/c1t_ws/src/

RUN git clone https://github.com/usdot-fhwa-stol/carma-msgs && \
    git clone -b nav2_route_server_humble https://github.com/usdot-fhwa-stol/navigation2

COPY . /root/c1t_ws/src/navigation2_extensions/
COPY install_dependencies.sh /root/c1t_ws/
COPY build.sh /root/c1t_ws/

WORKDIR /root/c1t_ws/

RUN chmod +x ./install_dependencies.sh ./build.sh
RUN ./install_dependencies.sh
RUN ./build.sh

LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="navigation2-extensions" \
      org.label-schema.description="CARMA 1tenth nav2 extensions" \
      org.label-schema.vendor="Leidos" \
      org.label-schema.version="${VERSION}" \
      org.label-schema.url="https://highways.dot.gov/research/research-programs/operations/CARMA" \
      org.label-schema.vcs-url="https://github.com/usdot-fhwa-stol/navigation2_extensions" \
      org.label-schema.vcs-ref="${VCS_REF}" \
      org.label-schema.build-date="${BUILD_DATE}"

ENTRYPOINT ["/bin/bash"]
