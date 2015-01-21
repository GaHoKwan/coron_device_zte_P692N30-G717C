.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;


# static fields
.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_ADMINCODE:Ljava/lang/String; = "admincode"

.field public static final KEY_LAT:Ljava/lang/String; = "lat"

.field public static final KEY_LON:Ljava/lang/String; = "lon"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_TELEPHONE:Ljava/lang/String; = "telephone"


# virtual methods
.method public abstract getIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getSubDescriptions(Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public abstract getSubIcons()[Landroid/graphics/Bitmap;
.end method

.method public abstract getSubListSize()I
.end method

.method public abstract getSubTitles(Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public abstract requestPoiData(IIIILcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin$IPOIDataCallback;)V
.end method
