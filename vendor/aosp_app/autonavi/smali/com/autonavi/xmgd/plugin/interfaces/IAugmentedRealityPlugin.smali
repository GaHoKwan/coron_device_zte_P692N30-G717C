.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/IAugmentedRealityPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;


# static fields
.field public static final KEY_ARINFO_CAR_LAT:Ljava/lang/String; = "arinfo_car_lat"

.field public static final KEY_ARINFO_CAR_LON:Ljava/lang/String; = "arinfo_car_lon"

.field public static final KEY_ARINFO_CAR_SPEED:Ljava/lang/String; = "arinfo_car_speed"

.field public static final KEY_ARINFO_DEST_LAT:Ljava/lang/String; = "arinfo_dest_lat"

.field public static final KEY_ARINFO_DEST_LON:Ljava/lang/String; = "arinfo_dest_lon"

.field public static final KEY_ARINFO_ENABLE_VOICE:Ljava/lang/String; = "arinfo_enable_voice"

.field public static final KEY_ARINFO_GPS_LEVEL:Ljava/lang/String; = "arinfo_gps_level"

.field public static final KEY_ARINFO_HAS_CAMERA:Ljava/lang/String; = "arinfo_has_camera"

.field public static final KEY_ARINFO_LIMIT_SPEED:Ljava/lang/String; = "arinfo_limit_speed"

.field public static final KEY_ARINFO_NEXT_ROAD_DIS:Ljava/lang/String; = "arinfo_next_road_dis"

.field public static final KEY_ARINFO_NEXT_ROAD_NAME:Ljava/lang/String; = "arinfo_next_road_name"

.field public static final KEY_ARINFO_REMIN_DIS:Ljava/lang/String; = "arinfo_remin_dis"

.field public static final KEY_ARINFO_TURN_ID:Ljava/lang/String; = "arinfo_turn_id"

.field public static final KEY_AROUNDINFO_LAT:Ljava/lang/String; = "aroundinfo_lat"

.field public static final KEY_AROUNDINFO_LON:Ljava/lang/String; = "aroundinfo_lon"

.field public static final KEY_AROUNDINFO_NAME:Ljava/lang/String; = "aroundinfo_name"

.field public static final KEY_AROUNDSET_INTERVAL:Ljava/lang/String; = "aroundset_interval"

.field public static final KEY_AROUNDSET_RANGE:Ljava/lang/String; = "aroundset_range"

.field public static final KEY_AROUNDSET_TYPE:Ljava/lang/String; = "aroundset_type"

.field public static final KEY_CURRENTINFO_LAT:Ljava/lang/String; = "currentinfo_lat"

.field public static final KEY_CURRENTINFO_LON:Ljava/lang/String; = "currentinfo_lon"


# virtual methods
.method public abstract getARView(Landroid/os/Bundle;Lcom/autonavi/xmgd/plugin/interfaces/IAugmentedRealityPlugin$IAugmentedRealityCallBack;)Landroid/view/View;
.end method

.method public abstract getAroundInfoParam()Landroid/os/Bundle;
.end method

.method public abstract onDayNightChanged(Z)V
.end method

.method public abstract onLocaleChanged(Ljava/util/Locale;)V
.end method

.method public abstract updateARInfo(Landroid/os/Bundle;)V
.end method

.method public abstract updateAroundInfo(Ljava/util/List;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method
