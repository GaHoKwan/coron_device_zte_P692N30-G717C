.class public final Lzte/com/cn/driverMode/utils/DMWeatherManager;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/net/Uri;


# instance fields
.field protected a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://hf.weather/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lzte/com/cn/driverMode/utils/DMWeatherManager;->b:Landroid/net/Uri;

    return-void
.end method
