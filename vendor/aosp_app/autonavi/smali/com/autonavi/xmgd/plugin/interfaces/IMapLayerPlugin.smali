.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;


# static fields
.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_ADMINCODE:Ljava/lang/String; = "admincode"

.field public static final KEY_LAT:Ljava/lang/String; = "lat"

.field public static final KEY_LON:Ljava/lang/String; = "lon"

.field public static final KEY_MAP_ADMINCODE:Ljava/lang/String; = "map_admincode"

.field public static final KEY_MAP_AREANAME:Ljava/lang/String; = "map_areaname"

.field public static final KEY_MAP_LAT:Ljava/lang/String; = "map_lat"

.field public static final KEY_MAP_LON:Ljava/lang/String; = "map_lon"

.field public static final KEY_MAP_ROADNAME:Ljava/lang/String; = "map_raodname"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_TELEPHONE:Ljava/lang/String; = "telephone"


# virtual methods
.method public abstract getLayerIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getMapIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getSubDescriptions(Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public abstract getSubLayerIcons()[Landroid/graphics/Bitmap;
.end method

.method public abstract getSubMapIcons()[Landroid/graphics/Bitmap;
.end method

.method public abstract getSubNum()I
.end method

.method public abstract getSubTitles(Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public abstract hasSubList()Z
.end method

.method public abstract onAddToMap()V
.end method

.method public abstract onRemoveFromMap()V
.end method

.method public abstract requestData(Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;Landroid/os/Bundle;II)V
.end method
