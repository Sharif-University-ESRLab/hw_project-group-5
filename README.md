
## Lane Keeping Assist System

### Team Members:
Tarlan Bahadori - Hamila Mailee


A lane keeping assist (LKA) system is a control system that aids a driver in maintaining safe travel within a marked lane of a highway. The LKA system detects when the vehicle deviates from a lane and automatically adjusts the steering to restore proper travel inside the lane without additional input from the driver. In this example, the LKA system switches between the driver steering command and lane keeping controller. This approach is sufficient to introduce a modeling architecture for an LKA system, however a real system would also provide haptic feedback to the steering wheel and enable the driver to override the LKA system by applying sufficient counter-torque.

For the LKA to work correctly, the ego vehicle must determine the lane boundaries and how the lane in front of it curves. Idealized LKA designs rely mostly on the previewed curvature, the lateral deviation, and relative yaw angle between the centerline of the lane and the ego vehicle. An example of such a system is given in Lane Keeping Assist System Using Model Predictive Control. Moving from advanced drive-assistance system (ADAS) designs to more autonomous systems, the LKA must be robust to missing, incomplete, or inaccurate measurement readings from real-world lane detectors.

In this project, we used the LKA controller implemented in Simulink. This implementation demonstrates a robust approach to the controller design when the data from lane detections may not be accurate. To do so, it uses data from a synthetic lane detector that simulates the impairments introduced by a wide-angle monocular vision camera. The controller makes decisions when the data from the sensor is invalid or outside a range. This provides a safety guard when the sensor measurement is false due to conditions in the environment, such as a sharp curve on the road.

