.class public Lcom/mediatek/vcalendar/parameter/Role;
.super Lcom/mediatek/vcalendar/parameter/Parameter;
.source "Role.java"


# static fields
.field public static final CHAIR:Ljava/lang/String; = "CHAIR"

.field private static final NON_PARTICIPANT:Ljava/lang/String; = "NON-PARTICIPANT"

.field private static final OPT_PARTICIPANT:Ljava/lang/String; = "OPT-PARTICIPANT"

.field private static final REQ_PARTICIPANT:Ljava/lang/String; = "REQ-PARTICIPANT"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 56
    const-string v0, "ROLE"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private getRationshipType(Ljava/lang/String;)I
    .locals 1
    .parameter "roleString"

    .prologue
    .line 100
    const-string v0, "CHAIR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x2

    .line 108
    :goto_0
    return v0

    .line 104
    :cond_0
    const-string v0, "OPT-PARTICIPANT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NON-PARTICIPANT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getRoleString(I)Ljava/lang/String;
    .locals 1
    .parameter "roleType"

    .prologue
    .line 73
    packed-switch p0, :pswitch_data_0

    .line 82
    const-string v0, "REQ-PARTICIPANT"

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    const-string v0, "NON-PARTICIPANT"

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v0, "REQ-PARTICIPANT"

    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "OPT-PARTICIPANT"

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRoleType(Ljava/lang/String;)I
    .locals 2
    .parameter "roleString"

    .prologue
    const/4 v0, 0x1

    .line 87
    const-string v1, "REQ-PARTICIPANT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    const-string v1, "OPT-PARTICIPANT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const/4 v0, 0x2

    goto :goto_0

    .line 93
    :cond_2
    const-string v1, "CHAIR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NON-PARTICIPANT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :cond_3
    const/4 v0, 0x0

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
    .line 61
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    .line 62
    const-string v0, "attendeeType"

    iget-object v1, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/vcalendar/parameter/Role;->getRoleType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v0, "attendeeRelationship"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, "attendeeRelationship"

    iget-object v1, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/vcalendar/parameter/Role;->getRationshipType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    :cond_0
    return-void
.end method
