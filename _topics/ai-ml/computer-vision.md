---
layout: experience
title:  "Computer Vision"
sort_order: 10
category: ai-ml
tags:
    - Life Science
    - Artificial Intelligence
    - Machine Learning
    - Manufacturing
summary: >-
    Hands-free tracking of chemical substances in research lab. Serial number recognition, item counting on shopfloor. Defect detection in manufacturing. Multi-lane vehicle tracking for high-way traffic flow modeling. Crowd tracking at public event to detect disturbances. Image categorization of user-uploaded photos on listing site for improved search experience. Fraud detection on delivery site for raw materials using surveillance video. Target recognition on hyper-spectral infrared imagery.
references:
    - molnar2000traffic
    - fadiran2006statistical
    - fadiran2006maximizing
---

<!--more-->
- #### Hands-free tracking of chemical substances in research lab
  Scientists can register their lab samples by holding up bottle to the camera. Captured images of the bottle labels are pre-processed locally, then processed for OCR and registration in the cloud. Use custom CNN, Amazon Textract, Amazon Rekognition.

- #### Serial number recognition
  Read serial numbers (SNs) from machine parts. Part of the SN is cast in mold, part is engraved as dot peen. Use pre-trained DNN models for object detection and object recognition. Post processing corrects SNs based on format rules to 100% accuracy. Use augmentation of labeled images to increase training set 100 fold.

- #### Item counting on shopfloor
  Quality control to validate shipping label with stack of materials before loading on the truck. OCR to read shipping label, custom image transformations to count number of items in stack, determine dimensions of materials.

- #### Defect detection in manufacturing
  Qaulity control for lamination process of sheet metal. Image classification to detect work material. Unsupervised annomaly detection of defects.

- #### Multi-lane vehicle tracking for high-way traffic flow modeling
  Data collection along 5-lane Inter-state highway to measure vehicle speed, spacing between vehicles, accelleration, and lane change frequency. Use commercially available technology for traffic control. Data is used to calibrate traffic flow models that predict travel time and risk of congestions.

- #### Crowd tracking at public event to detect disturbances
  Data on pedestrian movement at public gatherings was collected using commercially available tracking devices, which was subsequently utilized to calibrate the social force model.
  
- #### Image categorization of vendor-uploaded photos on e-commerce site for improved search experience
  The e-commerce site introduced a new comparative view of listed products categorized by their images. Because many images that were provided by vendors are not properly categorized, about 1 million images needed to be processed before launch. Use pre-trained CNN for image classification. Add extra layers to align with application specific classes.

- #### Fraud detection on delivery site for raw materials using surveillance video
  Delivery trucks are weighted upon entrance and exit of the site. Use surveillance video at weight stations to verify proper position of track on scale, type raw material, and that same truck enters and exists under the shipping number. Use custom feature generation, classification models, and image similarity.

- #### Target recognition on hyper-spectral infrared imagery
  Object detection in hyper-spectral infrared images with over 500 channels. Object size ranges from sub-pixel to few pixels. Develop image quality measure to compare performance of automated target recognition systems. Synthesize image data with multi-spectral ray tracer.



