.class public final Lcom/mediatek/vcalendar/parameter/ParameterFactory;
.super Ljava/lang/Object;
.source "ParameterFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static createParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 50
    const-string v1, "ParameterFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createParameter --- name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-nez p0, :cond_0

    .line 52
    const-string v1, "ParameterFactory"

    const-string v2, "createParameter: Cannot create a parameter without giving defined name"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    .line 55
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, nameString:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Lcom/mediatek/vcalendar/parameter/Cn;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/parameter/Cn;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v1, "ENCODING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    new-instance v1, Lcom/mediatek/vcalendar/parameter/Encoding;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/parameter/Encoding;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v1, "PARTSTAT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    new-instance v1, Lcom/mediatek/vcalendar/parameter/PartStat;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/parameter/PartStat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v1, "ROLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    new-instance v1, Lcom/mediatek/vcalendar/parameter/Role;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/parameter/Role;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_4
    const-string v1, "TZID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    new-instance v1, Lcom/mediatek/vcalendar/parameter/TzId;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/parameter/TzId;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v1, "VALUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    new-instance v1, Lcom/mediatek/vcalendar/parameter/Value;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/parameter/Value;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_6
    const-string v1, "X-RELATIONSHIP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    new-instance v1, Lcom/mediatek/vcalendar/parameter/XRelationship;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/parameter/XRelationship;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_7
    new-instance v1, Lcom/mediatek/vcalendar/parameter/Parameter;

    invoke-direct {v1, v0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
