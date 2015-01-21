.class public Lcom/itextpdf/text/pdf/PdfDate;
.super Lcom/itextpdf/text/pdf/PdfString;
.source "PdfDate.java"


# static fields
.field private static final DATE_SPACE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDate;->DATE_SPACE:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDate;-><init>(Ljava/util/Calendar;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 9
    .parameter "d"

    .prologue
    const/16 v8, 0x27

    const/16 v7, 0x10

    const/16 v6, 0xf

    const/4 v5, 0x2

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfString;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "D:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, date:Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDate;->setLength(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfDate;->setLength(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfDate;->setLength(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfDate;->setLength(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfDate;->setLength(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfDate;->setLength(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x36ee80

    div-int v1, v3, v4

    .line 89
    .local v1, timezone:I
    if-nez v1, :cond_1

    .line 90
    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    :goto_0
    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, v1, v5}, Lcom/itextpdf/text/pdf/PdfDate;->setLength(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0xea60

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v4, v1, 0x3c

    sub-int v2, v3, v4

    .line 102
    .local v2, zone:I
    invoke-direct {p0, v2, v5}, Lcom/itextpdf/text/pdf/PdfDate;->setLength(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    .end local v2           #zone:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfDate;->value:Ljava/lang/String;

    .line 105
    return-void

    .line 92
    :cond_1
    if-gez v1, :cond_2

    .line 93
    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    neg-int v1, v1

    goto :goto_0

    .line 97
    :cond_2
    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 11
    .parameter "s"

    .prologue
    .line 207
    :try_start_0
    const-string v7, "D:"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 210
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 211
    .local v6, slen:I
    const/16 v7, 0x5a

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 212
    .local v2, idx:I
    if-ltz v2, :cond_2

    .line 213
    move v6, v2

    .line 214
    new-instance v0, Ljava/util/GregorianCalendar;

    new-instance v7, Ljava/util/SimpleTimeZone;

    const/4 v8, 0x0

    const-string v9, "ZPDF"

    invoke-direct {v7, v8, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 234
    .local v0, calendar:Ljava/util/GregorianCalendar;
    :goto_0
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 235
    const/4 v2, 0x0

    .line 236
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    sget-object v7, Lcom/itextpdf/text/pdf/PdfDate;->DATE_SPACE:[I

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 237
    if-lt v2, v6, :cond_6

    .line 245
    .end local v0           #calendar:Ljava/util/GregorianCalendar;
    .end local v2           #idx:I
    .end local v3           #k:I
    .end local v6           #slen:I
    :cond_1
    :goto_2
    return-object v0

    .line 217
    .restart local v2       #idx:I
    .restart local v6       #slen:I
    :cond_2
    const/4 v5, 0x1

    .line 218
    .local v5, sign:I
    const/16 v7, 0x2b

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 219
    if-gez v2, :cond_3

    .line 220
    const/16 v7, 0x2d

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 221
    if-ltz v2, :cond_3

    .line 222
    const/4 v5, -0x1

    .line 224
    :cond_3
    if-gez v2, :cond_4

    .line 225
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .restart local v0       #calendar:Ljava/util/GregorianCalendar;
    goto :goto_0

    .line 227
    .end local v0           #calendar:Ljava/util/GregorianCalendar;
    :cond_4
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v4, v7, 0x3c

    .line 228
    .local v4, offset:I
    add-int/lit8 v7, v2, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 229
    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v8, v2, 0x6

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 230
    :cond_5
    new-instance v0, Ljava/util/GregorianCalendar;

    new-instance v7, Ljava/util/SimpleTimeZone;

    mul-int v8, v4, v5

    const v9, 0xea60

    mul-int/2addr v8, v9

    const-string v9, "ZPDF"

    invoke-direct {v7, v8, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 231
    .restart local v0       #calendar:Ljava/util/GregorianCalendar;
    move v6, v2

    goto :goto_0

    .line 239
    .end local v4           #offset:I
    .end local v5           #sign:I
    .restart local v3       #k:I
    :cond_6
    sget-object v7, Lcom/itextpdf/text/pdf/PdfDate;->DATE_SPACE:[I

    aget v7, v7, v3

    sget-object v8, Lcom/itextpdf/text/pdf/PdfDate;->DATE_SPACE:[I

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    add-int/2addr v8, v2

    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Lcom/itextpdf/text/pdf/PdfDate;->DATE_SPACE:[I

    add-int/lit8 v10, v3, 0x2

    aget v9, v9, v10

    add-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 240
    sget-object v7, Lcom/itextpdf/text/pdf/PdfDate;->DATE_SPACE:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v7

    .line 236
    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 244
    .end local v0           #calendar:Ljava/util/GregorianCalendar;
    .end local v2           #idx:I
    .end local v3           #k:I
    .end local v6           #slen:I
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getW3CDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "d"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x3a

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 148
    const-string v4, "D:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 152
    const-string v4, "0000"

    .line 196
    :goto_0
    return-object v4

    .line 153
    :cond_1
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_2

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 157
    :cond_2
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_3

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 161
    :cond_3
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_4

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 165
    :cond_4
    const/16 v4, 0x54

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_5

    .line 168
    const-string v4, ":00Z"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 171
    :cond_5
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_6

    .line 174
    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 177
    :cond_6
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 179
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 180
    :cond_7
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, sign:Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 182
    const-string v0, "00"

    .line 183
    .local v0, h:Ljava/lang/String;
    const-string v1, "00"

    .line 184
    .local v1, m:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_9

    .line 185
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_8

    .line 187
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_8

    .line 189
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 195
    .end local v0           #h:Ljava/lang/String;
    .end local v1           #m:Ljava/lang/String;
    .end local v3           #sign:Ljava/lang/String;
    :cond_9
    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private setLength(II)Ljava/lang/String;
    .locals 3
    .parameter "i"
    .parameter "length"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v0, tmp:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 127
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 128
    const/4 v1, 0x0

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getW3CDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDate;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
