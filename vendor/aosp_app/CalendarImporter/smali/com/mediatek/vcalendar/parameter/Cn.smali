.class public Lcom/mediatek/vcalendar/parameter/Cn;
.super Lcom/mediatek/vcalendar/parameter/Parameter;
.source "Cn.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cn"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 51
    const-string v0, "CN"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "Cn"

    const-string v1, "Constructor: CN parameter started"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public toAttendeesContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v0, "Cn"

    const-string v1, "toAttendeesContentValue started"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    .line 59
    const-string v0, "attendeeName"

    iget-object v1, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
