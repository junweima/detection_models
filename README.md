# Knowledgify Extension on Object Detection Models
---

### Things to do:

- [x] Train with default current setup (mbv2 ssdlite with coco weights on coco dataset)
- [ ] Train (faster_rcnn_resnet50_coco or nasnet)
- [ ] Train MobileNetV2 with faster rcnn (maybe?)
- [ ] Train distillation with no augmentation
- [ ] Train distillation with classical augmentation
- [ ] Train distillation with mixup
- [ ] Train distillation with manifold mixup


ssdlite_mobilenet_v2_coco_2018_05_09
<pre>
 Average Precision  (AP) @[ IoU=0.50:0.95 | area=   all | maxDets=100 ] = 0.283  
 Average Precision  (AP) @[ IoU=0.50      | area=   all | maxDets=100 ] = 0.439  
 Average Precision  (AP) @[ IoU=0.75      | area=   all | maxDets=100 ] = 0.305  
 Average Precision  (AP) @[ IoU=0.50:0.95 | area= small | maxDets=100 ] = 0.014
 Average Precision  (AP) @[ IoU=0.50:0.95 | area=medium | maxDets=100 ] = 0.141  
 Average Precision  (AP) @[ IoU=0.50:0.95 | area= large | maxDets=100 ] = 0.543  
 Average Recall     (AR) @[ IoU=0.50:0.95 | area=   all | maxDets=  1 ] = 0.249  
 Average Recall     (AR) @[ IoU=0.50:0.95 | area=   all | maxDets= 10 ] = 0.358  
 Average Recall     (AR) @[ IoU=0.50:0.95 | area=   all | maxDets=100 ] = 0.376  
 Average Recall     (AR) @[ IoU=0.50:0.95 | area= small | maxDets=100 ] = 0.036  
 Average Recall     (AR) @[ IoU=0.50:0.95 | area=medium | maxDets=100 ] = 0.262  
 Average Recall     (AR) @[ IoU=0.50:0.95 | area= large | maxDets=100 ] = 0.663  
</pre>









