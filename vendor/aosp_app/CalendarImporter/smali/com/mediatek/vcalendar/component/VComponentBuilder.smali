.class public Lcom/mediatek/vcalendar/component/VComponentBuilder;
.super Ljava/lang/Object;
.source "VComponentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vcalendar/component/VComponentBuilder$1;,
        Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;,
        Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VComponentBuilder"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static buildEvent(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;)Lcom/mediatek/vcalendar/component/VEvent;
    .locals 1
    .parameter "eventInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/mediatek/vcalendar/component/VEvent;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VEvent;-><init>()V

    .line 118
    .local v0, event:Lcom/mediatek/vcalendar/component/VEvent;
    invoke-virtual {v0, p0}, Lcom/mediatek/vcalendar/component/VEvent;->parseVEventInfo(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;)V

    .line 120
    return-object v0
.end method

.method public static buildEvent(Ljava/lang/String;)Lcom/mediatek/vcalendar/component/VEvent;
    .locals 3
    .parameter "eventString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->parseComponent(Lcom/mediatek/vcalendar/component/Component;Ljava/lang/String;)Lcom/mediatek/vcalendar/component/Component;

    move-result-object v0

    .line 100
    .local v0, event:Lcom/mediatek/vcalendar/component/Component;
    if-eqz v0, :cond_0

    const-string v1, "VEVENT"

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    new-instance v1, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v2, "buildEvent: Expected VEVENT"

    invoke-direct {v1, v2}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    check-cast v0, Lcom/mediatek/vcalendar/component/VEvent;

    .end local v0           #event:Lcom/mediatek/vcalendar/component/Component;
    return-object v0
.end method

.method public static buildTimezone(Ljava/lang/String;)Lcom/mediatek/vcalendar/component/VTimezone;
    .locals 3
    .parameter "tzString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->parseComponent(Lcom/mediatek/vcalendar/component/Component;Ljava/lang/String;)Lcom/mediatek/vcalendar/component/Component;

    move-result-object v0

    .line 135
    .local v0, tz:Lcom/mediatek/vcalendar/component/Component;
    if-eqz v0, :cond_0

    const-string v1, "VTIMEZONE"

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    new-instance v1, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v2, "buildTimezone: Expected VTIMEZONE"

    invoke-direct {v1, v2}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    check-cast v0, Lcom/mediatek/vcalendar/component/VTimezone;

    .end local v0           #tz:Lcom/mediatek/vcalendar/component/Component;
    return-object v0
.end method

.method private static extractParameter(Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;)Lcom/mediatek/vcalendar/parameter/Parameter;
    .locals 12
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x22

    const/4 v10, -0x1

    .line 318
    iget-object v6, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mLine:Ljava/lang/String;

    .line 319
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 320
    .local v3, len:I
    const/4 v4, 0x0

    .line 321
    .local v4, parameter:Lcom/mediatek/vcalendar/parameter/Parameter;
    const/4 v5, -0x1

    .line 322
    .local v5, startIndex:I
    const/4 v2, -0x1

    .line 323
    .local v2, equalIndex:I
    :goto_0
    iget v7, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    if-ge v7, v3, :cond_d

    .line 324
    iget v7, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    .local v0, c:C
    const/16 v7, 0x3a

    if-ne v0, v7, :cond_2

    .line 326
    if-eqz v4, :cond_1

    .line 327
    if-ne v2, v10, :cond_0

    .line 328
    new-instance v7, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 330
    :cond_0
    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mediatek/vcalendar/parameter/Parameter;->setValue(Ljava/lang/String;)V

    .line 373
    :cond_1
    :goto_1
    return-object v4

    .line 333
    :cond_2
    const/16 v7, 0x3b

    if-ne v0, v7, :cond_6

    .line 334
    if-nez v4, :cond_4

    .line 337
    iget v5, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    .line 375
    :cond_3
    :goto_2
    iget v7, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    goto :goto_0

    .line 339
    :cond_4
    if-ne v2, v10, :cond_5

    .line 340
    new-instance v7, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 342
    :cond_5
    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mediatek/vcalendar/parameter/Parameter;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_6
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_8

    .line 346
    if-nez v4, :cond_7

    if-eq v5, v10, :cond_7

    .line 347
    iget v2, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    .line 350
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/mediatek/vcalendar/parameter/ParameterFactory;->createParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v4

    .line 351
    const/4 v5, -0x1

    goto :goto_2

    .line 354
    :cond_7
    const-string v7, "VComponentBuilder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FormatException happened, Expected one \';\' before one \'=\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 357
    :cond_8
    if-ne v0, v11, :cond_3

    .line 358
    if-nez v4, :cond_9

    .line 359
    new-instance v7, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected parameter before \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 361
    :cond_9
    if-ne v2, v10, :cond_a

    .line 362
    new-instance v7, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 364
    :cond_a
    iget v7, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    add-int/lit8 v8, v2, 0x1

    if-le v7, v8, :cond_b

    .line 365
    new-instance v7, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parameter value cannot contain a \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 367
    :cond_b
    iget v7, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 368
    .local v1, endQuote:I
    if-gez v1, :cond_c

    .line 369
    new-instance v7, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected closing \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 371
    :cond_c
    iget v7, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mediatek/vcalendar/parameter/Parameter;->setValue(Ljava/lang/String;)V

    .line 372
    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    goto/16 :goto_1

    .line 377
    .end local v0           #c:C
    .end local v1           #endQuote:I
    :cond_d
    new-instance v7, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \':\' before end of line in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static extractValue(Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;)Ljava/lang/String;
    .locals 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mLine:Ljava/lang/String;

    .line 304
    .local v0, line:Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    .line 305
    :cond_0
    const-string v2, "VComponentBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \':\' before end of line in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x0

    .line 310
    :goto_0
    return-object v1

    .line 308
    :cond_1
    iget v2, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    goto :goto_0
.end method

.method private static normalizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 163
    move-object v0, p0

    .line 165
    .local v0, normalizedText:Ljava/lang/String;
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "\r"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "=\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "\n\t"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "\n "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "VComponentBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normalizeText: normalized Text : \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method public static parseComponent(Lcom/mediatek/vcalendar/component/Component;Ljava/lang/String;)Lcom/mediatek/vcalendar/component/Component;
    .locals 2
    .parameter "component"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p1}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->normalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, normalizedText:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->parseComponentImpl(Lcom/mediatek/vcalendar/component/Component;Ljava/lang/String;)Lcom/mediatek/vcalendar/component/Component;

    move-result-object v1

    return-object v1
.end method

.method private static parseComponentImpl(Lcom/mediatek/vcalendar/component/Component;Ljava/lang/String;)Lcom/mediatek/vcalendar/component/Component;
    .locals 12
    .parameter "component"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v1, p0

    .line 194
    .local v1, current:Lcom/mediatek/vcalendar/component/Component;
    move-object v3, p0

    .line 195
    .local v3, finalComponent:Lcom/mediatek/vcalendar/component/Component;
    new-instance v8, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;-><init>(Lcom/mediatek/vcalendar/component/VComponentBuilder$1;)V

    .line 196
    .local v8, state:Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;
    const/4 v9, 0x0

    iput v9, v8, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    .line 199
    const-string v9, "\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, lines:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 205
    .local v6, line:Ljava/lang/String;
    :try_start_0
    invoke-static {v6, v8, v1}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->parseLine(Ljava/lang/String;Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;Lcom/mediatek/vcalendar/component/Component;)Lcom/mediatek/vcalendar/component/Component;
    :try_end_0
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    if-nez v3, :cond_0

    .line 210
    move-object v3, v1

    .line 203
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, fe:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v9, "VComponentBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 219
    .end local v2           #fe:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    .end local v6           #line:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private static parseLine(Ljava/lang/String;Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;Lcom/mediatek/vcalendar/component/Component;)Lcom/mediatek/vcalendar/component/Component;
    .locals 12
    .parameter "line"
    .parameter "state"
    .parameter "component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3b

    const/4 v10, 0x0

    .line 230
    iput-object p0, p1, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mLine:Ljava/lang/String;

    .line 232
    iget-object v9, p1, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mLine:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 235
    .local v4, len:I
    const/4 v0, 0x0

    .line 236
    .local v0, c:C
    iput v10, p1, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    :goto_0
    iget v9, p1, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    if-ge v9, v4, :cond_0

    .line 237
    iget v9, p1, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 238
    if-eq v0, v11, :cond_0

    const/16 v9, 0x3a

    if-ne v0, v9, :cond_1

    .line 242
    :cond_0
    iget v9, p1, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    invoke-virtual {p0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, name:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 245
    const-string v9, "BEGIN"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 246
    new-instance v9, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v10, "Expected BEGIN"

    invoke-direct {v9, v10}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 236
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    iget v9, p1, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;->mIndex:I

    goto :goto_0

    .line 251
    .restart local v5       #name:Ljava/lang/String;
    :cond_2
    const-string v9, "BEGIN"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 253
    invoke-static {p1}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->extractValue(Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, componentName:Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/mediatek/vcalendar/component/ComponentFactory;->createComponent(Ljava/lang/String;Lcom/mediatek/vcalendar/component/Component;)Lcom/mediatek/vcalendar/component/Component;

    move-result-object v1

    .line 255
    .local v1, child:Lcom/mediatek/vcalendar/component/Component;
    if-eqz p2, :cond_3

    .line 256
    invoke-virtual {p2, v1}, Lcom/mediatek/vcalendar/component/Component;->addChild(Lcom/mediatek/vcalendar/component/Component;)V

    .line 294
    .end local v1           #child:Lcom/mediatek/vcalendar/component/Component;
    .end local v2           #componentName:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v1

    .line 259
    :cond_4
    const-string v9, "END"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 261
    invoke-static {p1}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->extractValue(Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .restart local v2       #componentName:Ljava/lang/String;
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/mediatek/vcalendar/component/Component;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 263
    :cond_5
    new-instance v9, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected END "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 265
    :cond_6
    invoke-virtual {p2}, Lcom/mediatek/vcalendar/component/Component;->getParent()Lcom/mediatek/vcalendar/component/Component;

    move-result-object v1

    goto :goto_1

    .line 267
    .end local v2           #componentName:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/mediatek/vcalendar/property/PropertyFactory;->createProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v7

    .line 270
    .local v7, property:Lcom/mediatek/vcalendar/property/Property;
    if-ne v0, v11, :cond_8

    .line 271
    const/4 v6, 0x0

    .line 272
    .local v6, parameter:Lcom/mediatek/vcalendar/parameter/Parameter;
    :goto_2
    invoke-static {p1}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->extractParameter(Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 273
    invoke-virtual {v7, v6}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    goto :goto_2

    .line 277
    .end local v6           #parameter:Lcom/mediatek/vcalendar/parameter/Parameter;
    :cond_8
    invoke-static {p1}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->extractValue(Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 279
    const-string v9, "VComponentBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseLine,value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v9, "ENCODING"

    invoke-virtual {v7, v9}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v3

    .line 285
    .local v3, encodePara:Lcom/mediatek/vcalendar/parameter/Parameter;
    if-eqz v3, :cond_9

    .line 286
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/parameter/Parameter;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/valuetype/Text;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 287
    const-string v9, "VComponentBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseLine, after decode, property value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_9
    invoke-virtual {v7, v8}, Lcom/mediatek/vcalendar/property/Property;->setValue(Ljava/lang/String;)V

    .line 291
    const-string v9, "VComponentBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseLine, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/mediatek/vcalendar/property/Property;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " added to component:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/mediatek/vcalendar/component/Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2, v7}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .end local v3           #encodePara:Lcom/mediatek/vcalendar/parameter/Parameter;
    :cond_a
    move-object v1, p2

    .line 294
    goto/16 :goto_1
.end method
