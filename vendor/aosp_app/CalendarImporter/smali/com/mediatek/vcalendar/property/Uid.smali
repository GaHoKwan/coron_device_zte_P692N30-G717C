.class public Lcom/mediatek/vcalendar/property/Uid;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Uid.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Uid"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 55
    const-string v0, "UID"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "Uid"

    const-string v1, "Constructor: Uid Property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, id:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
