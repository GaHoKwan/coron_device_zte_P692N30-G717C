.class public Lcom/plugin/installapk/ar/Info;
.super Ljava/lang/Object;


# static fields
.field public static final AR_KEY_ARRIVAL_TIME:Ljava/lang/String; = "arinfo_arrival_time"

.field public static final AR_KEY_CAR_SPEED:Ljava/lang/String; = "arinfo_car_speed"

.field public static final AR_KEY_HAS_CAMERA:Ljava/lang/String; = "arinfo_has_camera"

.field public static final AR_KEY_IMAGE_PATH:Ljava/lang/String; = "arinfo_ImageOnSDCard_path"

.field public static final AR_KEY_LIMIT_DISTANCE:Ljava/lang/String; = "arinfo_limit_distance"

.field public static final AR_KEY_LIMIT_SPEED:Ljava/lang/String; = "arinfo_limit_speed"

.field public static final AR_KEY_NEXT_ROAD_DIS:Ljava/lang/String; = "arinfo_next_road_dis"

.field public static final AR_KEY_NEXT_ROAD_NAME:Ljava/lang/String; = "arinfo_next_road_name"

.field public static final AR_KEY_REMIN_DIS:Ljava/lang/String; = "arinfo_remin_dis"

.field public static final AR_KEY_TURN_ID:Ljava/lang/String; = "arinfo_turn_id"

.field public static final AR_KEY_ZOOMVIEW:Ljava/lang/String; = "arinfo_zoomview"

.field public static final AR_KEY_ZOOMVIEW_STATU:Ljava/lang/String; = "arinfo_zoomview_statu"

.field public static final ZOOMVIEW_STATUS_END:I = 0x2

.field public static final ZOOMVIEW_STATUS_RUNNING:I = 0x1

.field public static final ZOOMVIEW_STATUS_START:I


# instance fields
.field arrivalTime:I

.field cameraLimitDis:I

.field carSpeed:I

.field gpsLevel:I

.field hasCamera:Z

.field limitSpeed:I

.field nextRoadDis:I

.field nextRoadName:Ljava/lang/String;

.field routeReminDis:I

.field trunID:I

.field zoomBitmap:Landroid/graphics/Bitmap;

.field zoomViewStatu:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
