.class public Lcom/mediatek/vcalendar/property/Description;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Description.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Description"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 60
    const-string v0, "DESCRIPTION"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "Description"

    const-string v1, "Constructor: Description property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
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
    .line 66
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    .line 69
    .local v0, value:Ljava/lang/String;
    const-string v1, "description"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
