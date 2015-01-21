.class public Lcom/mediatek/vcalendar/component/VTimezone;
.super Lcom/mediatek/vcalendar/component/Component;
.source "VTimezone.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTimezone"

.field public static final VTIMEZONE_BEGIN:Ljava/lang/String; = "BEGIN:VTIMEZONE"

.field public static final VTIMEZONE_END:Ljava/lang/String; = "END:VTIMEZONE"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "VTIMEZONE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/vcalendar/component/Component;-><init>(Ljava/lang/String;Lcom/mediatek/vcalendar/component/Component;)V

    .line 59
    const-string v0, "VTimezone"

    const-string v1, "Constructor: VTIMEZONE component created!"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
