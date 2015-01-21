.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/ITestPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;


# static fields
.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_ADMINCODE:Ljava/lang/String; = "admincode"

.field public static final KEY_CITY:Ljava/lang/String; = "city"

.field public static final KEY_LAT:Ljava/lang/String; = "lat"

.field public static final KEY_LON:Ljava/lang/String; = "lon"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_TELEPHONE:Ljava/lang/String; = "telephone"


# virtual methods
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getLayout(Landroid/app/Activity;)Landroid/view/View;
.end method

.method public abstract requestPoiData(Lcom/autonavi/xmgd/plugin/interfaces/ITestPlugin$IPOIDataCallback;)V
.end method

.method public abstract requestSomething(Landroid/os/Handler;I)V
.end method

.method public abstract test(Landroid/app/Activity;)I
.end method
