.class public Lcom/mediatek/vcalendar/property/Version;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Version.java"


# static fields
.field public static final VERSION10:Ljava/lang/String; = "1.0"

.field public static final VERSION20:Ljava/lang/String; = "2.0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "VERSION"

    const-string v1, "2.0"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
