.class public Lcom/mediatek/vcalendar/parameter/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"


# static fields
.field public static final ABBREV:Ljava/lang/String; = "ABBREV"

.field public static final ALTREP:Ljava/lang/String; = "ALTREP"

.field public static final CHARSET:Ljava/lang/String; = "CHARSET"

.field public static final CN:Ljava/lang/String; = "CN"

.field public static final CUTYPE:Ljava/lang/String; = "CUTYPE"

.field public static final DELEGATED_FROM:Ljava/lang/String; = "DELEGATED-FROM"

.field public static final DELEGATED_TO:Ljava/lang/String; = "DELEGATED-TO"

.field public static final DIR:Ljava/lang/String; = "DIR"

.field public static final ENCODING:Ljava/lang/String; = "ENCODING"

.field public static final EXPERIMENTAL_PREFIX:Ljava/lang/String; = "X-"

.field public static final FBTYPE:Ljava/lang/String; = "FBTYPE"

.field public static final FMTTYPE:Ljava/lang/String; = "FMTTYPE"

.field public static final LANGUAGE:Ljava/lang/String; = "LANGUAGE"

.field public static final MEMBER:Ljava/lang/String; = "MEMBER"

.field public static final PARTSTAT:Ljava/lang/String; = "PARTSTAT"

.field public static final RANGE:Ljava/lang/String; = "RANGE"

.field public static final RELATED:Ljava/lang/String; = "RELATED"

.field public static final RELTYPE:Ljava/lang/String; = "RELTYPE"

.field public static final ROLE:Ljava/lang/String; = "ROLE"

.field public static final RSVP:Ljava/lang/String; = "RSVP"

.field public static final SCHEDULE_AGENT:Ljava/lang/String; = "SCHEDULE-AGENT"

.field public static final SCHEDULE_STATUS:Ljava/lang/String; = "SCHEDULE-STATUS"

.field public static final SENT_BY:Ljava/lang/String; = "SENT-BY"

.field private static final TAG:Ljava/lang/String; = "Parameter"

.field public static final TYPE:Ljava/lang/String; = "TYPE"

.field public static final TZID:Ljava/lang/String; = "TZID"

.field public static final VALUE:Ljava/lang/String; = "VALUE"

.field public static final VVENUE:Ljava/lang/String; = "VVENUE"

.field public static final X_RELATIONSHIP:Ljava/lang/String; = "X-RELATIONSHIP"


# instance fields
.field protected mName:Ljava/lang/String;

.field protected mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mName:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public toAttendeesContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    const-string v0, "Parameter"

    const-string v1, "toAttendeesContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    .line 163
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/mediatek/vcalendar/parameter/Parameter;->toString(Ljava/lang/StringBuilder;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    return-void
.end method
