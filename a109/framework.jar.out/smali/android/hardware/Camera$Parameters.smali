.class public Landroid/hardware/Camera$Parameters;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# static fields
.field public static final ANTIBANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final ANTIBANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final ANTIBANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final ANTIBANDING_OFF:Ljava/lang/String; = "off"

.field public static final CAMERA_MODE_MTK_PRV:I = 0x1

.field public static final CAMERA_MODE_MTK_VDO:I = 0x2

.field public static final CAMERA_MODE_MTK_VT:I = 0x3

.field public static final CAMERA_MODE_NORMAL:I = 0x0

.field public static final CAPTURE_MODE_ASD:Ljava/lang/String; = "asd"

.field public static final CAPTURE_MODE_BEST_SHOT:Ljava/lang/String; = "bestshot"

.field public static final CAPTURE_MODE_BURST_SHOT:Ljava/lang/String; = "burstshot"

.field public static final CAPTURE_MODE_CONTINUOUS_SHOT:Ljava/lang/String; = "continuousshot"

.field public static final CAPTURE_MODE_EV_BRACKET_SHOT:Ljava/lang/String; = "evbracketshot"

.field public static final CAPTURE_MODE_FB:Ljava/lang/String; = "face_beauty"

.field public static final CAPTURE_MODE_GESTURE_SHOT:Ljava/lang/String; = "gestureshot"

.field public static final CAPTURE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final CAPTURE_MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final CAPTURE_MODE_PANORAMA3D:Ljava/lang/String; = "panorama3dmode"

.field public static final CAPTURE_MODE_PANORAMA_SHOT:Ljava/lang/String; = "autorama"

.field public static final CAPTURE_MODE_S3D:Ljava/lang/String; = "single3d"

.field public static final CAPTURE_MODE_SMILE_SHOT:Ljava/lang/String; = "smileshot"

.field public static final EFFECT_AQUA:Ljava/lang/String; = "aqua"

.field public static final EFFECT_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field public static final EFFECT_MONO:Ljava/lang/String; = "mono"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final EFFECT_NONE:Ljava/lang/String; = "none"

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "posterize"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "sepia"

.field public static final EFFECT_SOLARIZE:Ljava/lang/String; = "solarize"

.field public static final EFFECT_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field public static final EIS_MODE_OFF:Ljava/lang/String; = "off"

.field public static final EIS_MODE_ON:Ljava/lang/String; = "on"

.field private static final FALSE:Ljava/lang/String; = "false"

.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final FOCUS_DISTANCE_FAR_INDEX:I = 0x2

.field public static final FOCUS_DISTANCE_NEAR_INDEX:I = 0x0

.field public static final FOCUS_DISTANCE_OPTIMAL_INDEX:I = 0x1

.field public static final FOCUS_ENG_MODE_BRACKET:I = 0x1

.field public static final FOCUS_ENG_MODE_FULLSCAN:I = 0x2

.field public static final FOCUS_ENG_MODE_FULLSCAN_REPEAT:I = 0x3

.field public static final FOCUS_ENG_MODE_NONE:I = 0x0

.field public static final FOCUS_ENG_MODE_REPEAT:I = 0x4

.field public static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field public static final FOCUS_MODE_EDOF:Ljava/lang/String; = "edof"

.field public static final FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final FOCUS_MODE_FULLSCAN:Ljava/lang/String; = "fullscan"

.field public static final FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final FOCUS_MODE_MACRO:Ljava/lang/String; = "macro"

.field public static final FOCUS_MODE_MANUAL:Ljava/lang/String; = "manual"

.field private static final KEY_AFLAMP_MODE:Ljava/lang/String; = "aflamp-mode"

.field private static final KEY_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field private static final KEY_AUTO_EXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final KEY_AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final KEY_BRIGHTNESS_MODE:Ljava/lang/String; = "brightness"

.field private static final KEY_BURST_SHOT_NUM:Ljava/lang/String; = "burst-num"

.field private static final KEY_CAMERA_MODE:Ljava/lang/String; = "mtk-cam-mode"

.field private static final KEY_CAPTURE_MODE:Ljava/lang/String; = "cap-mode"

.field private static final KEY_CAPTURE_PATH:Ljava/lang/String; = "capfname"

.field private static final KEY_CONTINUOUS_SPEED_MODE:Ljava/lang/String; = "continuous-shot-speed"

.field private static final KEY_CONTRAST_MODE:Ljava/lang/String; = "contrast"

.field private static final KEY_EDGE_MODE:Ljava/lang/String; = "edge"

.field private static final KEY_EFFECT:Ljava/lang/String; = "effect"

.field private static final KEY_EIS_MODE:Ljava/lang/String; = "eis-mode"

.field private static final KEY_ENG_AE_ENABLE:Ljava/lang/String; = "eng-ae-enable"

.field private static final KEY_ENG_CAPTURE_ISO:Ljava/lang/String; = "eng-capture-iso"

.field private static final KEY_ENG_CAPTURE_ISP_GAIN:Ljava/lang/String; = "eng-capture-isp-gain"

.field private static final KEY_ENG_CAPTURE_SENSOR_GAIN:Ljava/lang/String; = "eng-capture-sensor-gain"

.field private static final KEY_ENG_CAPTURE_SHUTTER_SPEED:Ljava/lang/String; = "eng-capture-shutter-speed"

.field private static final KEY_ENG_EV_CALBRATION_OFFSET_VALUE:Ljava/lang/String; = "eng-ev-cal-offset"

.field private static final KEY_ENG_FLASH_DUTY_MAX:Ljava/lang/String; = "eng-flash-duty-max"

.field private static final KEY_ENG_FLASH_DUTY_MIN:Ljava/lang/String; = "eng-flash-duty-min"

.field private static final KEY_ENG_FLASH_DUTY_VALUE:Ljava/lang/String; = "eng-flash-duty-value"

.field private static final KEY_ENG_FOCUS_FULLSCAN_FRAME_INTERVAL:Ljava/lang/String; = "eng-focus-fullscan-frame-interval"

.field private static final KEY_ENG_FOCUS_FULLSCAN_FRAME_INTERVAL_MAX:Ljava/lang/String; = "eng-focus-fullscan-frame-interval-max"

.field private static final KEY_ENG_FOCUS_FULLSCAN_FRAME_INTERVAL_MIN:Ljava/lang/String; = "eng-focus-fullscan-frame-interval-min"

.field private static final KEY_ENG_MSG:Ljava/lang/String; = "eng-msg"

.field private static final KEY_ENG_PARAMETER1:Ljava/lang/String; = "key-eng-parameter1"

.field private static final KEY_ENG_PARAMETER2:Ljava/lang/String; = "key-eng-parameter2"

.field private static final KEY_ENG_PARAMETER3:Ljava/lang/String; = "key-eng-parameter3"

.field private static final KEY_ENG_PREVIEW_AE_INDEX:Ljava/lang/String; = "eng-preview-ae-index"

.field private static final KEY_ENG_PREVIEW_FPS:Ljava/lang/String; = "eng-preview-fps"

.field private static final KEY_ENG_PREVIEW_FRAME_INTERVAL_IN_US:Ljava/lang/String; = "eng-preview-frame-interval-in-us"

.field private static final KEY_ENG_PREVIEW_ISP_GAIN:Ljava/lang/String; = "eng-preview-isp-gain"

.field private static final KEY_ENG_PREVIEW_SENSOR_GAIN:Ljava/lang/String; = "eng-preview-sensor-gain"

.field private static final KEY_ENG_PREVIEW_SHUTTER_SPEED:Ljava/lang/String; = "eng-preview-shutter-speed"

.field private static final KEY_ENG_SAVE_SHADING_TABLE:Ljava/lang/String; = "eng-save-shading-table"

.field private static final KEY_ENG_SHADING_TABLE:Ljava/lang/String; = "eng-shading-table"

.field private static final KEY_ENG_ZSD_ENABLE:Ljava/lang/String; = "eng-zsd-enable"

.field private static final KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field private static final KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field private static final KEY_EXPOSURE_METER_MODE:Ljava/lang/String; = "exposure-meter"

.field private static final KEY_FD_MODE:Ljava/lang/String; = "fd-mode"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final KEY_FOCAL_LENGTH:Ljava/lang/String; = "focal-length"

.field private static final KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final KEY_FOCUS_DISTANCES:Ljava/lang/String; = "focus-distances"

.field private static final KEY_FOCUS_ENG_BEST_STEP:Ljava/lang/String; = "afeng-best-focus-step"

.field private static final KEY_FOCUS_ENG_MAX_STEP:Ljava/lang/String; = "afeng-max-focus-step"

.field private static final KEY_FOCUS_ENG_MIN_STEP:Ljava/lang/String; = "afeng-min-focus-step"

.field private static final KEY_FOCUS_ENG_MODE:Ljava/lang/String; = "afeng-mode"

.field private static final KEY_FOCUS_ENG_STEP:Ljava/lang/String; = "afeng-pos"

.field private static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field private static final KEY_FPS_MODE:Ljava/lang/String; = "fps-mode"

.field private static final KEY_GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field private static final KEY_GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field private static final KEY_GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field private static final KEY_GPS_PROCESSING_METHOD:Ljava/lang/String; = "gps-processing-method"

.field private static final KEY_GPS_TIMESTAMP:Ljava/lang/String; = "gps-timestamp"

.field private static final KEY_HORIZONTAL_VIEW_ANGLE:Ljava/lang/String; = "horizontal-view-angle"

.field private static final KEY_HUE_MODE:Ljava/lang/String; = "hue"

.field private static final KEY_ISOSPEED_MODE:Ljava/lang/String; = "iso-speed"

.field private static final KEY_JPEG_QUALITY:Ljava/lang/String; = "jpeg-quality"

.field private static final KEY_JPEG_THUMBNAIL_HEIGHT:Ljava/lang/String; = "jpeg-thumbnail-height"

.field private static final KEY_JPEG_THUMBNAIL_QUALITY:Ljava/lang/String; = "jpeg-thumbnail-quality"

.field private static final KEY_JPEG_THUMBNAIL_SIZE:Ljava/lang/String; = "jpeg-thumbnail-size"

.field private static final KEY_JPEG_THUMBNAIL_WIDTH:Ljava/lang/String; = "jpeg-thumbnail-width"

.field private static final KEY_MATV_PREVIEW_DELAY:Ljava/lang/String; = "tv-delay"

.field private static final KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field private static final KEY_MAX_NUM_DETECTED_FACES_HW:Ljava/lang/String; = "max-num-detected-faces-hw"

.field private static final KEY_MAX_NUM_DETECTED_FACES_SW:Ljava/lang/String; = "max-num-detected-faces-sw"

.field public static final KEY_MAX_NUM_DETECTED_OBJECT:Ljava/lang/String; = "max-num-ot"

.field private static final KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field private static final KEY_MAX_NUM_METERING_AREAS:Ljava/lang/String; = "max-num-metering-areas"

.field private static final KEY_MAX_ZOOM:Ljava/lang/String; = "max-zoom"

.field private static final KEY_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field private static final KEY_MUTE_RECORDING_SOUND:Ljava/lang/String; = "rec-mute-ogg"

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO:Ljava/lang/String; = "preferred-preview-size-for-video"

.field private static final KEY_PREVIEW_DUMP_RESOLUTION:Ljava/lang/String; = "preview-dump-resolution"

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final KEY_PREVIEW_FPS_RANGE:Ljava/lang/String; = "preview-fps-range"

.field private static final KEY_PREVIEW_FRAME_RATE:Ljava/lang/String; = "preview-frame-rate"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final KEY_RAW_DUMP_FLAG:Ljava/lang/String; = "afeng_raw_dump_flag"

.field private static final KEY_RAW_SAVE_MODE:Ljava/lang/String; = "rawsave-mode"

.field private static final KEY_RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final KEY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final KEY_SATURATION_MODE:Ljava/lang/String; = "saturation"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field private static final KEY_SENSOR_DEV:Ljava/lang/String; = "sensor-dev"

.field private static final KEY_SENSOR_TYPE:Ljava/lang/String; = "sensor-type"

.field private static final KEY_SMOOTH_ZOOM_SUPPORTED:Ljava/lang/String; = "smooth-zoom-supported"

.field public static final KEY_STEREO3D_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_STEREO3D_PRE:Ljava/lang/String; = "stereo3d-"

.field public static final KEY_STEREO3D_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_VERTICAL_VIEW_ANGLE:Ljava/lang/String; = "vertical-view-angle"

.field private static final KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field private static final KEY_VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static final KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "video-stabilization"

.field private static final KEY_VIDEO_STABILIZATION_SUPPORTED:Ljava/lang/String; = "video-stabilization-supported"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field private static final KEY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final KEY_ZOOM_RATIOS:Ljava/lang/String; = "zoom-ratios"

.field private static final KEY_ZOOM_SUPPORTED:Ljava/lang/String; = "zoom-supported"

.field private static final KEY_ZSD_MODE:Ljava/lang/String; = "zsd-mode"

.field private static final KEY_ZSD_SUPPORTED:Ljava/lang/String; = "zsd-supported"

.field private static final PIXEL_FORMAT_BAYER_RGGB:Ljava/lang/String; = "bayer-rggb"

.field private static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final PIXEL_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field private static final PIXEL_FORMAT_YUV420P:Ljava/lang/String; = "yuv420p"

.field private static final PIXEL_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static final PIXEL_FORMAT_YUV422I:Ljava/lang/String; = "yuv422i-yuyv"

.field private static final PIXEL_FORMAT_YUV422SP:Ljava/lang/String; = "yuv422sp"

.field public static final PREVIEW_DUMP_RESOLUTION_CROP:I = 0x1

.field public static final PREVIEW_DUMP_RESOLUTION_NORMAL:I = 0x0

.field public static final PREVIEW_FPS_MAX_INDEX:I = 0x1

.field public static final PREVIEW_FPS_MIN_INDEX:I = 0x0

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field public static final SENSOR_DEV_ATV:Ljava/lang/String; = "atv"

.field public static final SENSOR_DEV_MAIN:Ljava/lang/String; = "main"

.field public static final SENSOR_DEV_SUB:Ljava/lang/String; = "sub"

.field public static final STEREO3D_TYPE_FRAMESEQ:Ljava/lang/String; = "frame_seq"

.field public static final STEREO3D_TYPE_OFF:Ljava/lang/String; = "off"

.field public static final STEREO3D_TYPE_SIDEBYSIDE:Ljava/lang/String; = "sidebyside"

.field public static final STEREO3D_TYPE_TOPBOTTOM:Ljava/lang/String; = "topbottom"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TRUE:Ljava/lang/String; = "true"

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final WHITE_BALANCE_TUNGSTEN:Ljava/lang/String; = "tungsten"

.field public static final WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStereo3DMode:Z

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method private constructor <init>(Landroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 3415
    iput-object p1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3022
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    .line 3416
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    .line 3417
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/Camera;
    .param p2, "x1"    # Landroid/hardware/Camera$1;

    .prologue
    .line 2833
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    return-void
.end method

.method private cameraFormatForPixelFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "pixel_format"    # I

    .prologue
    .line 4001
    sparse-switch p1, :sswitch_data_0

    .line 4009
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4002
    :sswitch_0
    const-string/jumbo v0, "yuv422sp"

    goto :goto_0

    .line 4003
    :sswitch_1
    const-string/jumbo v0, "yuv420sp"

    goto :goto_0

    .line 4004
    :sswitch_2
    const-string/jumbo v0, "yuv422i-yuyv"

    goto :goto_0

    .line 4005
    :sswitch_3
    const-string/jumbo v0, "yuv420p"

    goto :goto_0

    .line 4006
    :sswitch_4
    const-string/jumbo v0, "rgb565"

    goto :goto_0

    .line 4007
    :sswitch_5
    const-string v0, "jpeg"

    goto :goto_0

    .line 4008
    :sswitch_6
    const-string v0, "bayer-rggb"

    goto :goto_0

    .line 4001
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_2
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
        0x32315659 -> :sswitch_3
    .end sparse-switch
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 5791
    :try_start_0
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 5793
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .line 5792
    .restart local p2    # "defaultValue":F
    :catch_0
    move-exception v0

    .line 5793
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 5800
    :try_start_0
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 5802
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 5801
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 5802
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private pixelFormatForCameraFormat(Ljava/lang/String;)I
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4014
    if-nez p1, :cond_1

    .line 4035
    :cond_0
    :goto_0
    return v0

    .line 4017
    :cond_1
    const-string/jumbo v1, "yuv422sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4018
    const/16 v0, 0x10

    goto :goto_0

    .line 4020
    :cond_2
    const-string/jumbo v1, "yuv420sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4021
    const/16 v0, 0x11

    goto :goto_0

    .line 4023
    :cond_3
    const-string/jumbo v1, "yuv422i-yuyv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4024
    const/16 v0, 0x14

    goto :goto_0

    .line 4026
    :cond_4
    const-string/jumbo v1, "yuv420p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4027
    const v0, 0x32315659

    goto :goto_0

    .line 4029
    :cond_5
    const-string/jumbo v1, "rgb565"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4030
    const/4 v0, 0x4

    goto :goto_0

    .line 4032
    :cond_6
    const-string v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4033
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private same(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 5900
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 5902
    :cond_0
    :goto_0
    return v0

    .line 5901
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5902
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private set(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/16 v5, 0x2c

    .line 3522
    if-nez p2, :cond_0

    .line 3523
    const-string v4, "(0,0,0,0,0)"

    invoke-virtual {p0, p1, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    :goto_0
    return-void

    .line 3525
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3526
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3527
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 3528
    .local v0, "area":Landroid/hardware/Camera$Area;
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 3529
    .local v3, "rect":Landroid/graphics/Rect;
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3530
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3531
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3532
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3533
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3534
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3535
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3536
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3537
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3538
    iget v4, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3539
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3540
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3526
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3542
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5739
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 5747
    :cond_0
    return-object v3

    .line 5741
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5742
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5743
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5744
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5745
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitArea(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 5867
    if-eqz p1, :cond_0

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-eq v7, v8, :cond_2

    .line 5869
    :cond_0
    const-string v7, "CameraFramework"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid area string="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 5896
    :cond_1
    :goto_0
    return-object v5

    .line 5873
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5874
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v3, 0x1

    .line 5875
    .local v3, "fromIndex":I
    const/4 v7, 0x5

    new-array v1, v7, [I

    .line 5877
    .local v1, "array":[I
    :cond_3
    const-string v7, "),("

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 5878
    .local v2, "endIndex":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 5879
    :cond_4
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 5880
    new-instance v4, Landroid/graphics/Rect;

    aget v7, v1, v11

    aget v8, v1, v12

    const/4 v9, 0x2

    aget v9, v1, v9

    const/4 v10, 0x3

    aget v10, v1, v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5881
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v7, Landroid/hardware/Camera$Area;

    const/4 v8, 0x4

    aget v8, v1, v8

    invoke-direct {v7, v4, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5882
    add-int/lit8 v3, v2, 0x3

    .line 5883
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_3

    .line 5885
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    move-object v5, v6

    goto :goto_0

    .line 5887
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_1

    .line 5888
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 5889
    .local v0, "area":Landroid/hardware/Camera$Area;
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 5890
    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-nez v7, :cond_1

    iget v7, v0, Landroid/hardware/Camera$Area;->weight:I

    if-nez v7, :cond_1

    move-object v5, v6

    .line 5892
    goto :goto_0
.end method

.method private splitFloat(Ljava/lang/String;[F)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "output"    # [F

    .prologue
    .line 5778
    if-nez p1, :cond_1

    .line 5786
    :cond_0
    return-void

    .line 5780
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5781
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5782
    const/4 v1, 0x0

    .line 5783
    .local v1, "index":I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5784
    .local v3, "s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p2, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5753
    if-nez p1, :cond_1

    move-object v3, v4

    .line 5762
    :cond_0
    :goto_0
    return-object v3

    .line 5755
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5756
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5757
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5758
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5759
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5761
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;[I)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "output"    # [I

    .prologue
    .line 5766
    if-nez p1, :cond_1

    .line 5774
    :cond_0
    return-void

    .line 5768
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5769
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5770
    const/4 v1, 0x0

    .line 5771
    .local v1, "index":I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5772
    .local v3, "s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method private splitRange(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5842
    if-eqz p1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_2

    .line 5844
    :cond_0
    const-string v5, "CameraFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid range list string="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 5860
    :cond_1
    :goto_0
    return-object v3

    .line 5848
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5849
    .local v3, "rangeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    const/4 v1, 0x1

    .line 5851
    .local v1, "fromIndex":I
    :cond_3
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 5852
    .local v2, "range":[I
    const-string v5, "),("

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 5853
    .local v0, "endIndex":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 5854
    :cond_4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 5855
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5856
    add-int/lit8 v1, v0, 0x3

    .line 5857
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_3

    .line 5859
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    goto :goto_0
.end method

.method private splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5809
    if-nez p1, :cond_1

    move-object v3, v5

    .line 5819
    :cond_0
    :goto_0
    return-object v3

    .line 5811
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x2c

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5812
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5813
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5814
    .local v3, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5815
    .local v1, "s":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5816
    .local v2, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5818
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v5

    goto :goto_0
.end method

.method private strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5825
    if-nez p1, :cond_0

    .line 5835
    :goto_0
    return-object v3

    .line 5827
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 5828
    .local v1, "pos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 5829
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5830
    .local v2, "width":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5831
    .local v0, "height":Ljava/lang/String;
    new-instance v3, Landroid/hardware/Camera$Size;

    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    goto :goto_0

    .line 5834
    .end local v0    # "height":Ljava/lang/String;
    .end local v2    # "width":Ljava/lang/String;
    :cond_1
    const-string v4, "CameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public copy()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 3426
    new-instance v0, Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    .line 3427
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    .line 3428
    return-object v0
.end method

.method public dump()V
    .locals 5

    .prologue
    .line 3437
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    iget-object v2, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3439
    .local v1, "k":Ljava/lang/String;
    const-string v3, "CameraFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3441
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public enableRecordingSound(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5680
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5681
    :cond_0
    const-string/jumbo v0, "rec-mute-ogg"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5683
    :cond_1
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3453
    .local v0, "flattened":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3454
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3455
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    iget-object v3, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3457
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3460
    .end local v2    # "k":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3553
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAFLampMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4320
    const-string v0, "aflamp-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAntibanding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4265
    const-string v0, "antibanding"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposureLock()Z
    .locals 2

    .prologue
    .line 4607
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4608
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    .prologue
    .line 4679
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4680
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getBestFocusStep()I
    .locals 2

    .prologue
    .line 5057
    const-string v0, "afeng-best-focus-step"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBrightnessMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4942
    const-string v0, "brightness"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4994
    const-string v0, "cap-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4228
    const-string v0, "effect"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4968
    const-string v0, "contrast"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4855
    const-string v0, "edge"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEisMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4299
    const-string v0, "eis-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEngCaptureISO()I
    .locals 2

    .prologue
    .line 5242
    const-string v0, "eng-capture-iso"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngCaptureISPGain()I
    .locals 2

    .prologue
    .line 5222
    const-string v0, "eng-capture-isp-gain"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngCaptureSensorGain()I
    .locals 2

    .prologue
    .line 5212
    const-string v0, "eng-capture-sensor-gain"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngCaptureShutterSpeed()I
    .locals 2

    .prologue
    .line 5232
    const-string v0, "eng-capture-shutter-speed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngEVCalOffset()I
    .locals 2

    .prologue
    .line 5372
    const-string v0, "eng-ev-cal-offset"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngEngMSG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5282
    const-string v0, "eng-msg"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEngFlashDutyMax()I
    .locals 2

    .prologue
    .line 5262
    const-string v0, "eng-flash-duty-max"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngFlashDutyMin()I
    .locals 2

    .prologue
    .line 5252
    const-string v0, "eng-flash-duty-min"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngFocusFullScanFrameIntervalMax()I
    .locals 2

    .prologue
    .line 5300
    const-string v0, "eng-focus-fullscan-frame-interval-max"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngFocusFullScanFrameIntervalMin()I
    .locals 2

    .prologue
    .line 5309
    const-string v0, "eng-focus-fullscan-frame-interval-min"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngPreviewAEIndex()I
    .locals 2

    .prologue
    .line 5202
    const-string v0, "eng-preview-ae-index"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngPreviewFPS()I
    .locals 2

    .prologue
    .line 5272
    const-string v0, "eng-preview-fps"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngPreviewFrameIntervalInUS()I
    .locals 2

    .prologue
    .line 5318
    const-string v0, "eng-preview-frame-interval-in-us"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngPreviewISPGain()I
    .locals 2

    .prologue
    .line 5192
    const-string v0, "eng-preview-isp-gain"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngPreviewSensorGain()I
    .locals 2

    .prologue
    .line 5182
    const-string v0, "eng-preview-sensor-gain"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEngPreviewShutterSpeed()I
    .locals 2

    .prologue
    .line 5172
    const-string v0, "eng-preview-shutter-speed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposureCompensation()I
    .locals 2

    .prologue
    .line 4507
    const-string v0, "exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposureCompensationStep()F
    .locals 2

    .prologue
    .line 4555
    const-string v0, "exposure-compensation-step"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getExposureMeterMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5123
    const-string v0, "exposure-meter"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4830
    const-string v0, "fd-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4403
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    .prologue
    .line 4475
    const-string v0, "focal-length"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5527
    const-string v0, "focus-areas"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDistances([F)V
    .locals 2
    .param p1, "output"    # [F

    .prologue
    .line 5465
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5466
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output must be a float array with three elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5469
    :cond_1
    const-string v0, "focus-distances"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitFloat(Ljava/lang/String;[F)V

    .line 5470
    return-void
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4443
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 4485
    const-string v0, "horizontal-view-angle"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getHueMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4884
    const-string v0, "hue"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISOSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4792
    const-string v0, "iso-speed"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3563
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegQuality()I
    .locals 1

    .prologue
    .line 3731
    const-string v0, "jpeg-quality"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailQuality()I
    .locals 1

    .prologue
    .line 3712
    const-string v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailSize()Landroid/hardware/Camera$Size;
    .locals 4

    .prologue
    .line 3680
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    const-string v2, "jpeg-thumbnail-width"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "jpeg-thumbnail-height"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .locals 2

    .prologue
    .line 4532
    const-string/jumbo v0, "max-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxFocusStep()I
    .locals 2

    .prologue
    .line 5084
    const-string v0, "afeng-max-focus-step"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumDetectedFaces()I
    .locals 2

    .prologue
    .line 5617
    const-string/jumbo v0, "max-num-detected-faces-hw"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumDetectedObjects()I
    .locals 2

    .prologue
    .line 4820
    const-string/jumbo v0, "max-num-ot"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumFocusAreas()I
    .locals 2

    .prologue
    .line 5481
    const-string/jumbo v0, "max-num-focus-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumMeteringAreas()I
    .locals 2

    .prologue
    .line 5549
    const-string/jumbo v0, "max-num-metering-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .locals 2

    .prologue
    .line 4744
    const-string/jumbo v0, "max-zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5593
    const-string/jumbo v0, "metering-areas"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMinExposureCompensation()I
    .locals 2

    .prologue
    .line 4543
    const-string/jumbo v0, "min-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinFocusStep()I
    .locals 2

    .prologue
    .line 5095
    const-string v0, "afeng-pos"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    .prologue
    .line 3979
    const-string/jumbo v0, "picture-format"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPictureSize()Landroid/hardware/Camera$Size;
    .locals 3

    .prologue
    .line 3938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stereo3d-"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "picture-size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3939
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1

    .line 3938
    .end local v0    # "pair":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 3652
    const-string/jumbo v1, "preferred-preview-size-for-video"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3653
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 3891
    const-string/jumbo v0, "preview-format"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewFpsRange([I)V
    .locals 2
    .param p1, "range"    # [I

    .prologue
    .line 3798
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3799
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "range must be an array with two elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3802
    :cond_1
    const-string/jumbo v0, "preview-fps-range"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 3803
    return-void
.end method

.method public getPreviewFrameRate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3756
    const-string/jumbo v0, "preview-frame-rate"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 3

    .prologue
    .line 3601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stereo3d-"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "preview-size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3602
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1

    .line 3601
    .end local v0    # "pair":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSaturationMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4913
    const-string/jumbo v0, "saturation"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4360
    const-string/jumbo v0, "scene-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSensorType()I
    .locals 2

    .prologue
    .line 5133
    const-string/jumbo v0, "sensor-type"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStereo3DType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stereo3d-"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSupportedAFLampMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4332
    const-string v1, "aflamp-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4333
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedAntibanding()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4286
    const-string v1, "antibanding-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4287
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedBrightnessMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4957
    const-string v1, "brightness-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4958
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedCaptureMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5013
    const-string v1, "cap-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5014
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4249
    const-string v1, "effect-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4250
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedContrastMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4986
    const-string v1, "contrast-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4987
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedEdgeMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4873
    const-string v1, "edge-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4874
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedEisMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4311
    const-string v1, "eis-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4312
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFDMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4844
    const-string v1, "fd-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4845
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4424
    const-string v1, "flash-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4425
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4464
    const-string v1, "focus-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4465
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedHueMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4902
    const-string v1, "hue-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4903
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedISOSpeed()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4810
    const-string v1, "iso-speed-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4811
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedJpegThumbnailSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3692
    const-string v1, "jpeg-thumbnail-size-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3693
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPictureFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3990
    const-string/jumbo v5, "picture-format-values"

    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3991
    .local v4, "str":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3992
    .local v1, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3993
    .local v3, "s":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    .line 3994
    .local v0, "f":I
    if-eqz v0, :cond_0

    .line 3995
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3997
    .end local v0    # "f":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stereo3d-"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "picture-size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3950
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 3949
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSupportedPreviewFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3905
    const-string/jumbo v5, "preview-format-values"

    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3906
    .local v4, "str":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3907
    .local v1, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3908
    .local v3, "s":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    .line 3909
    .local v0, "f":I
    if-eqz v0, :cond_0

    .line 3910
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3912
    .end local v0    # "f":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 3823
    const-string/jumbo v1, "preview-fps-range-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3824
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitRange(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewFrameRates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3768
    const-string/jumbo v1, "preview-frame-rate-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3769
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stereo3d-"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "preview-size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3613
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 3612
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSupportedSaturationMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4931
    const-string/jumbo v1, "saturation-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4932
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4387
    const-string/jumbo v1, "scene-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4388
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3632
    const-string/jumbo v1, "video-size-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3633
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4208
    const-string/jumbo v1, "whitebalance-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4209
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedZSDMode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5431
    const-string/jumbo v1, "zsd-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5432
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 4495
    const-string/jumbo v0, "vertical-view-angle"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVideoStabilization()Z
    .locals 2

    .prologue
    .line 5718
    const-string/jumbo v1, "video-stabilization"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5719
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4181
    const-string/jumbo v0, "whitebalance"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZSDMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5413
    const-string/jumbo v0, "zsd-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()I
    .locals 2

    .prologue
    .line 4706
    const-string/jumbo v0, "zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4758
    const-string/jumbo v0, "zoom-ratios"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isAutoExposureLockSupported()Z
    .locals 2

    .prologue
    .line 4621
    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4622
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isAutoWhiteBalanceLockSupported()Z
    .locals 2

    .prologue
    .line 4693
    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4694
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSmoothZoomSupported()Z
    .locals 2

    .prologue
    .line 4768
    const-string/jumbo v1, "smooth-zoom-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4769
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isVideoSnapshotSupported()Z
    .locals 2

    .prologue
    .line 5670
    const-string/jumbo v1, "video-snapshot-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5671
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isVideoStabilizationSupported()Z
    .locals 2

    .prologue
    .line 5731
    const-string/jumbo v1, "video-stabilization-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5732
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isZoomSupported()Z
    .locals 2

    .prologue
    .line 4730
    const-string/jumbo v1, "zoom-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4731
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3489
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3490
    return-void
.end method

.method public removeGpsData()V
    .locals 1

    .prologue
    .line 4158
    const-string v0, "gps-latitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 4159
    const-string v0, "gps-longitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 4160
    const-string v0, "gps-altitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 4161
    const-string v0, "gps-timestamp"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 4162
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 4163
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 3518
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3d

    const/16 v3, 0x3b

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3499
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3500
    :cond_0
    const-string v0, "CameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    :goto_0
    return-void

    .line 3503
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 3504
    :cond_2
    const-string v0, "CameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3508
    :cond_3
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAFLampMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "aflamp"    # Ljava/lang/String;

    .prologue
    .line 4326
    const-string v0, "aflamp-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4327
    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 1
    .param p1, "antibanding"    # Ljava/lang/String;

    .prologue
    .line 4275
    const-string v0, "antibanding"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4276
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    .prologue
    .line 4592
    const-string v1, "auto-exposure-lock"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4593
    return-void

    .line 4592
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    .prologue
    .line 4662
    const-string v1, "auto-whitebalance-lock"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4663
    return-void

    .line 4662
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setBrightnessMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4951
    const-string v0, "brightness"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4952
    return-void
.end method

.method public setBurstShotNum(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5037
    const-string v0, "burst-num"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5038
    return-void
.end method

.method public setCameraMode(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 4780
    const-string v0, "CameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    const-string/jumbo v0, "mtk-cam-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4782
    return-void
.end method

.method public setCaptureMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5004
    const-string v0, "cap-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    return-void
.end method

.method public setCapturePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5024
    if-nez p1, :cond_0

    .line 5025
    const-string v0, "capfname"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 5029
    :goto_0
    return-void

    .line 5027
    :cond_0
    const-string v0, "capfname"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4238
    const-string v0, "effect"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    return-void
.end method

.method public setContinuousSpeedMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5403
    const-string v0, "continuous-shot-speed"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5404
    return-void
.end method

.method public setContrastMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4977
    const-string v0, "contrast"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4978
    return-void
.end method

.method public setEdgeMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4864
    const-string v0, "edge"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4865
    return-void
.end method

.method public setEisMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "eis"    # Ljava/lang/String;

    .prologue
    .line 4305
    const-string v0, "eis-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4306
    return-void
.end method

.method public setEngAEEnable(I)V
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 5142
    const-string v0, "eng-ae-enable"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5143
    return-void
.end method

.method public setEngFlashDuty(I)V
    .locals 1
    .param p1, "duty"    # I

    .prologue
    .line 5152
    const-string v0, "eng-flash-duty-value"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5153
    return-void
.end method

.method public setEngFocusFullScanFrameInterval(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 5291
    const-string v0, "eng-focus-fullscan-frame-interval"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5292
    return-void
.end method

.method public setEngParameter1(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5327
    const-string v0, "key-eng-parameter1"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5328
    return-void
.end method

.method public setEngParameter2(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5336
    const-string v0, "key-eng-parameter2"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5337
    return-void
.end method

.method public setEngParameter3(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5345
    const-string v0, "key-eng-parameter3"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5346
    return-void
.end method

.method public setEngSaveShadingTable(I)V
    .locals 1
    .param p1, "save"    # I

    .prologue
    .line 5354
    const-string v0, "eng-save-shading-table"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5355
    return-void
.end method

.method public setEngShadingTable(I)V
    .locals 1
    .param p1, "shading_table"    # I

    .prologue
    .line 5363
    const-string v0, "eng-shading-table"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5364
    return-void
.end method

.method public setEngZSDEnable(I)V
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 5162
    const-string v0, "eng-zsd-enable"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5163
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4521
    const-string v0, "exposure-compensation"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4522
    return-void
.end method

.method public setExposureMeterMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 5114
    const-string v0, "exposure-meter"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5115
    return-void
.end method

.method public setFDMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4838
    const-string v0, "fd-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4839
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4413
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4414
    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5537
    .local p1, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v0, "focus-areas"

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 5538
    return-void
.end method

.method public setFocusEngMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 5047
    const-string v0, "afeng-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5048
    return-void
.end method

.method public setFocusEngStep(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 5105
    const-string v0, "afeng-pos"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5106
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4453
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4454
    return-void
.end method

.method public setGpsAltitude(D)V
    .locals 2
    .param p1, "altitude"    # D

    .prologue
    .line 4130
    const-string v0, "gps-altitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 2
    .param p1, "latitude"    # D

    .prologue
    .line 4111
    const-string v0, "gps-latitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4112
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 2
    .param p1, "longitude"    # D

    .prologue
    .line 4121
    const-string v0, "gps-longitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4122
    return-void
.end method

.method public setGpsProcessingMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "processing_method"    # Ljava/lang/String;

    .prologue
    .line 4150
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    return-void
.end method

.method public setGpsTimestamp(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 4140
    const-string v0, "gps-timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    return-void
.end method

.method public setHueMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4893
    const-string v0, "hue"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4894
    return-void
.end method

.method public setISOSpeed(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4801
    const-string v0, "iso-speed"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 3722
    const-string v0, "jpeg-quality"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3723
    return-void
.end method

.method public setJpegThumbnailQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 3703
    const-string v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3704
    return-void
.end method

.method public setJpegThumbnailSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3669
    const-string v0, "jpeg-thumbnail-width"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3670
    const-string v0, "jpeg-thumbnail-height"

    invoke-virtual {p0, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3671
    return-void
.end method

.method public setMATVDelay(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 5381
    const-string/jumbo v0, "tv-delay"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5382
    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5604
    .local p1, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string/jumbo v0, "metering-areas"

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 5605
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 4
    .param p1, "pixel_format"    # I

    .prologue
    .line 3963
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 3964
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3965
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3969
    :cond_0
    const-string/jumbo v1, "picture-format"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    return-void
.end method

.method public setPictureSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3928
    .local v0, "v":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stereo3d-"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "picture-size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3929
    return-void

    .line 3928
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public setPreviewFormat(I)V
    .locals 4
    .param p1, "pixel_format"    # I

    .prologue
    .line 3873
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 3874
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3875
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3879
    :cond_0
    const-string/jumbo v1, "preview-format"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3880
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 3785
    const-string/jumbo v0, "preview-fps-range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3786
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 1
    .param p1, "fps"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3743
    const-string/jumbo v0, "preview-frame-rate"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3744
    return-void
.end method

.method public setPreviewRawDumpResolution(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 5072
    const-string v0, "CameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewRawDumpResolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5073
    const-string/jumbo v0, "preview-dump-resolution"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5074
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3591
    .local v0, "v":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stereo3d-"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "preview-size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    return-void

    .line 3591
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public setRawDumpFlag(Z)V
    .locals 3
    .param p1, "toggle"    # Z

    .prologue
    .line 5064
    const-string v0, "CameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawDumpFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5065
    const-string v1, "afeng_raw_dump_flag"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5066
    return-void

    .line 5065
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setRecordingHint(Z)V
    .locals 2
    .param p1, "hint"    # Z

    .prologue
    .line 5639
    const-string/jumbo v1, "recording-hint"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5640
    return-void

    .line 5639
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 4095
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 4097
    :cond_0
    const-string/jumbo v0, "rotation"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4102
    return-void

    .line 4099
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSaturationMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4922
    const-string/jumbo v0, "saturation"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4923
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4376
    const-string/jumbo v0, "scene-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    return-void
.end method

.method public setStereo3DMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 5396
    iput-boolean p1, p0, Landroid/hardware/Camera$Parameters;->mStereo3DMode:Z

    .line 5397
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    .prologue
    .line 5706
    const-string/jumbo v1, "video-stabilization"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5707
    return-void

    .line 5706
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4194
    const-string/jumbo v1, "whitebalance"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4195
    .local v0, "oldValue":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4198
    :goto_0
    return-void

    .line 4196
    :cond_0
    const-string/jumbo v1, "whitebalance"

    invoke-virtual {p0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4197
    const-string v1, "auto-whitebalance-lock"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setZSDMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5422
    const-string/jumbo v0, "zsd-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5423
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4720
    const-string/jumbo v0, "zoom"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4721
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 7
    .param p1, "flattened"    # Ljava/lang/String;

    .prologue
    .line 3473
    iget-object v6, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3475
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3b

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3476
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3477
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3478
    .local v2, "kv":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 3479
    .local v3, "pos":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 3482
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3483
    .local v1, "k":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3484
    .local v5, "v":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3486
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "kv":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v5    # "v":Ljava/lang/String;
    :cond_1
    return-void
.end method
