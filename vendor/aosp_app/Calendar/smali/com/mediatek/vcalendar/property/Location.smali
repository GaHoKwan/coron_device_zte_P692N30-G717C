.class public Lcom/mediatek/vcalendar/property/Location;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Location.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Location"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 57
    const-string v0, "LOCATION"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "Location"

    const-string v1, "Constructor: Location property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
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
    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    .line 66
    .local v0, value:Ljava/lang/String;
    const-string v1, "eventLocation"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
