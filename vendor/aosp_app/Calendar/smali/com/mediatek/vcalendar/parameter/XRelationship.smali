.class public Lcom/mediatek/vcalendar/parameter/XRelationship;
.super Lcom/mediatek/vcalendar/parameter/Parameter;
.source "XRelationship.java"


# static fields
.field private static final ATTENDEE:Ljava/lang/String; = "ATTENDEE"

.field private static final NONE:Ljava/lang/String; = "NONE"

.field public static final ORGANIZER:Ljava/lang/String; = "ORGANIZER"

.field private static final PERFORMER:Ljava/lang/String; = "PERFORMER"

.field private static final SPEAKER:Ljava/lang/String; = "SPEAKER"

.field private static final TAG:Ljava/lang/String; = "XAttendeeRelationship"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 56
    const-string v0, "X-RELATIONSHIP"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "XAttendeeRelationship"

    const-string v1, "Constructor : X-RELATIONSHIP paratmeter created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static getXRelationshipString(I)Ljava/lang/String;
    .locals 1
    .parameter "relationshipType"

    .prologue
    .line 68
    packed-switch p0, :pswitch_data_0

    .line 81
    const-string v0, "ATTENDEE"

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v0, "ATTENDEE"

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "ORGANIZER"

    goto :goto_0

    .line 76
    :pswitch_3
    const-string v0, "PERFORMER"

    goto :goto_0

    .line 78
    :pswitch_4
    const-string v0, "SPEAKER"

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getXRelationshipType(Ljava/lang/String;)I
    .locals 1
    .parameter "relationshipString"

    .prologue
    .line 86
    const-string v0, "NONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 90
    :cond_0
    const-string v0, "ORGANIZER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x2

    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "PERFORMER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x3

    goto :goto_0

    .line 98
    :cond_2
    const-string v0, "SPEAKER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const/4 v0, 0x4

    goto :goto_0

    .line 101
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
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
    .line 62
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    .line 63
    const-string v0, "attendeeRelationship"

    iget-object v1, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/vcalendar/parameter/XRelationship;->getXRelationshipType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    return-void
.end method
