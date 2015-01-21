.class public Lcom/itextpdf/text/pdf/Barcode39;
.super Lcom/itextpdf/text/pdf/Barcode;
.source "Barcode39.java"


# static fields
.field private static final BARS:[[B = null

.field private static final CHARS:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

.field private static final EXTENDED:Ljava/lang/String; = "%U$A$B$C$D$E$F$G$H$I$J$K$L$M$N$O$P$Q$R$S$T$U$V$W$X$Y$Z%A%B%C%D%E  /A/B/C/D/E/F/G/H/I/J/K/L - ./O 0 1 2 3 4 5 6 7 8 9/Z%F%G%H%I%J%V A B C D E F G H I J K L M N O P Q R S T U V W X Y Z%K%L%M%N%O%W+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z%P%Q%R%S%T"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 74
    const/16 v0, 0x2c

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [B

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [B

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [B

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [B

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [B

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [B

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [B

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [B

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [B

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [B

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [B

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [B

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [B

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [B

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [B

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [B

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [B

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [B

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [B

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [B

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [B

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [B

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [B

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [B

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [B

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [B

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/Barcode39;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_b
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_c
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_e
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_16
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_17
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_19
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1b
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1c
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1e
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1f
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_20
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_21
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_22
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_23
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_25
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2b
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Barcode;-><init>()V

    .line 141
    const v1, 0x3f4ccccd

    :try_start_0
    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    .line 142
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->n:F

    .line 143
    const-string v1, "Helvetica"

    const-string v2, "winansi"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 144
    const/high16 v1, 0x4100

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    .line 145
    iget v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->baseline:F

    .line 146
    iget v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->barHeight:F

    .line 147
    const/4 v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->textAlignment:I

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->generateChecksum:Z

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->checksumText:Z

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->startStopText:Z

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/Barcode39;->extended:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getBarsCode39(Ljava/lang/String;)[B
    .locals 7
    .parameter "text"

    .prologue
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, -0x1

    new-array v0, v3, [B

    .line 166
    .local v0, bars:[B
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 167
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 168
    .local v1, idx:I
    if-gez v1, :cond_0

    .line 169
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "the.character.1.is.illegal.in.code.39"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/Barcode39;->BARS:[[B

    aget-object v3, v3, v1

    const/4 v4, 0x0

    mul-int/lit8 v5, v2, 0xa

    const/16 v6, 0x9

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v1           #idx:I
    :cond_1
    return-object v0
.end method

.method static getChecksum(Ljava/lang/String;)C
    .locals 6
    .parameter "text"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, chk:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 202
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 203
    .local v1, idx:I
    if-gez v1, :cond_0

    .line 204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "the.character.1.is.illegal.in.code.39"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_0
    add-int/2addr v0, v1

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v1           #idx:I
    :cond_1
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

    rem-int/lit8 v4, v0, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    return v3
.end method

.method public static getCode39Ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"

    .prologue
    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .local v4, out:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 183
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 184
    .local v0, c:C
    const/16 v5, 0x7f

    if-le v0, v5, :cond_0

    .line 185
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "the.character.1.is.illegal.in.code.39.extended"

    invoke-static {v6, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    :cond_0
    const-string v5, "%U$A$B$C$D$E$F$G$H$I$J$K$L$M$N$O$P$Q$R$S$T$U$V$W$X$Y$Z%A%B%C%D%E  /A/B/C/D/E/F/G/H/I/J/K/L - ./O 0 1 2 3 4 5 6 7 8 9/Z%F%G%H%I%J%V A B C D E F G H I J K L M N O P Q R S T U V W X Y Z%K%L%M%N%O%W+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z%P%Q%R%S%T"

    mul-int/lit8 v6, v0, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 187
    .local v1, c1:C
    const-string v5, "%U$A$B$C$D$E$F$G$H$I$J$K$L$M$N$O$P$Q$R$S$T$U$V$W$X$Y$Z%A%B%C%D%E  /A/B/C/D/E/F/G/H/I/J/K/L - ./O 0 1 2 3 4 5 6 7 8 9/Z%F%G%H%I%J%V A B C D E F G H I J K L M N O P Q R S T U V W X Y Z%K%L%M%N%O%W+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z%P%Q%R%S%T"

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 188
    .local v2, c2:C
    const/16 v5, 0x20

    if-eq v1, v5, :cond_1

    .line 189
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v0           #c:C
    .end local v1           #c1:C
    .end local v2           #c2:C
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 22
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 355
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v11

    .line 356
    .local v11, f:I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v12

    .line 357
    .local v12, g:I
    new-instance v10, Ljava/awt/Canvas;

    invoke-direct {v10}, Ljava/awt/Canvas;-><init>()V

    .line 359
    .local v10, canvas:Ljava/awt/Canvas;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/Barcode39;->code:Ljava/lang/String;

    .line 360
    .local v7, bCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/Barcode39;->extended:Z

    if-eqz v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/Barcode39;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 362
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/Barcode39;->generateChecksum:Z

    if-eqz v1, :cond_1

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/itextpdf/text/pdf/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 364
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v16, v1, 0x2

    .line 365
    .local v16, len:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/Barcode39;->n:F

    float-to-int v0, v1

    move/from16 v17, v0

    .line 366
    .local v17, nn:I
    mul-int/lit8 v1, v17, 0x3

    add-int/lit8 v1, v1, 0x6

    mul-int v1, v1, v16

    add-int/lit8 v5, v16, -0x1

    add-int v2, v1, v5

    .line 367
    .local v2, fullWidth:I
    invoke-static {v7}, Lcom/itextpdf/text/pdf/Barcode39;->getBarsCode39(Ljava/lang/String;)[B

    move-result-object v8

    .line 368
    .local v8, bars:[B
    const/16 v18, 0x1

    .line 369
    .local v18, print:Z
    const/16 v19, 0x0

    .line 370
    .local v19, ptr:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/Barcode39;->barHeight:F

    float-to-int v3, v1

    .line 371
    .local v3, height:I
    mul-int v1, v2, v3

    new-array v4, v1, [I

    .line 372
    .local v4, pix:[I
    const/4 v15, 0x0

    .local v15, k:I
    :goto_0
    array-length v1, v8

    if-ge v15, v1, :cond_6

    .line 373
    aget-byte v1, v8, v15

    if-nez v1, :cond_3

    const/16 v21, 0x1

    .line 374
    .local v21, w:I
    :goto_1
    move v9, v12

    .line 375
    .local v9, c:I
    if-eqz v18, :cond_2

    .line 376
    move v9, v11

    .line 377
    :cond_2
    if-nez v18, :cond_4

    const/16 v18, 0x1

    .line 378
    :goto_2
    const/4 v14, 0x0

    .local v14, j:I
    move/from16 v20, v19

    .end local v19           #ptr:I
    .local v20, ptr:I
    :goto_3
    move/from16 v0, v21

    if-ge v14, v0, :cond_5

    .line 379
    add-int/lit8 v19, v20, 0x1

    .end local v20           #ptr:I
    .restart local v19       #ptr:I
    aput v9, v4, v20

    .line 378
    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v19

    .end local v19           #ptr:I
    .restart local v20       #ptr:I
    goto :goto_3

    .end local v9           #c:I
    .end local v14           #j:I
    .end local v20           #ptr:I
    .end local v21           #w:I
    .restart local v19       #ptr:I
    :cond_3
    move/from16 v21, v17

    .line 373
    goto :goto_1

    .line 377
    .restart local v9       #c:I
    .restart local v21       #w:I
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 372
    .end local v19           #ptr:I
    .restart local v14       #j:I
    .restart local v20       #ptr:I
    :cond_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v19, v20

    .end local v20           #ptr:I
    .restart local v19       #ptr:I
    goto :goto_0

    .line 381
    .end local v9           #c:I
    .end local v14           #j:I
    .end local v21           #w:I
    :cond_6
    move v15, v2

    :goto_4
    array-length v1, v4

    if-ge v15, v1, :cond_7

    .line 382
    const/4 v1, 0x0

    invoke-static {v4, v1, v4, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    add-int/2addr v15, v2

    goto :goto_4

    .line 384
    :cond_7
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v5, 0x0

    move v6, v2

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v10, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v13

    .line 386
    .local v13, img:Ljava/awt/Image;
    return-object v13
.end method

.method public getBarcodeSize()Lcom/itextpdf/text/Rectangle;
    .locals 11

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, fontX:F
    const/4 v2, 0x0

    .line 217
    .local v2, fontY:F
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Barcode39;->code:Ljava/lang/String;

    .line 218
    .local v0, fCode:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->extended:Z

    if-eqz v7, :cond_0

    .line 219
    iget-object v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->code:Ljava/lang/String;

    invoke-static {v7}, Lcom/itextpdf/text/pdf/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v7, :cond_4

    .line 221
    iget v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->baseline:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 222
    iget v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->baseline:F

    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    const/4 v9, 0x3

    iget v10, p0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v8

    sub-float v2, v7, v8

    .line 225
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/Barcode39;->code:Ljava/lang/String;

    .line 226
    .local v3, fullCode:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->generateChecksum:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->checksumText:Z

    if-eqz v7, :cond_1

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/itextpdf/text/pdf/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    :cond_1
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->startStopText:Z

    if-eqz v7, :cond_2

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    :cond_2
    iget-object v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode39;->altText:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/Barcode39;->altText:Ljava/lang/String;

    .end local v3           #fullCode:Ljava/lang/String;
    :cond_3
    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    invoke-virtual {v7, v3, v8}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v1

    .line 232
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v6, v7, 0x2

    .line 233
    .local v6, len:I
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->generateChecksum:Z

    if-eqz v7, :cond_5

    .line 234
    add-int/lit8 v6, v6, 0x1

    .line 235
    :cond_5
    int-to-float v7, v6

    const/high16 v8, 0x40c0

    iget v9, p0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x4040

    iget v10, p0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/itextpdf/text/pdf/Barcode39;->n:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-int/lit8 v8, v6, -0x1

    int-to-float v8, v8

    iget v9, p0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    mul-float/2addr v8, v9

    add-float v5, v7, v8

    .line 236
    .local v5, fullWidth:F
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 237
    iget v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->barHeight:F

    add-float v4, v7, v2

    .line 238
    .local v4, fullHeight:F
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v7, v5, v4}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    return-object v7

    .line 224
    .end local v4           #fullHeight:F
    .end local v5           #fullWidth:F
    .end local v6           #len:I
    :cond_6
    iget v7, p0, Lcom/itextpdf/text/pdf/Barcode39;->baseline:F

    neg-float v7, v7

    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    add-float v2, v7, v8

    goto/16 :goto_0
.end method

.method public placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;
    .locals 19
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/Barcode39;->code:Ljava/lang/String;

    .line 279
    .local v7, fullCode:Ljava/lang/String;
    const/4 v6, 0x0

    .line 280
    .local v6, fontX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/Barcode39;->code:Ljava/lang/String;

    .line 281
    .local v2, bCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->extended:Z

    if-eqz v15, :cond_0

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->code:Ljava/lang/String;

    invoke-static {v15}, Lcom/itextpdf/text/pdf/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_4

    .line 284
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->generateChecksum:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->checksumText:Z

    if-eqz v15, :cond_1

    .line 285
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Lcom/itextpdf/text/pdf/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 286
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->startStopText:Z

    if-eqz v15, :cond_2

    .line 287
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 288
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->altText:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/Barcode39;->altText:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v6

    .line 290
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->generateChecksum:Z

    if-eqz v15, :cond_5

    .line 291
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Lcom/itextpdf/text/pdf/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v10, v15, 0x2

    .line 293
    .local v10, len:I
    int-to-float v15, v10

    const/high16 v16, 0x40c0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x4040

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->n:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v15, v15, v16

    add-int/lit8 v16, v10, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v8, v15, v16

    .line 294
    .local v8, fullWidth:F
    const/4 v3, 0x0

    .line 295
    .local v3, barStartX:F
    const/4 v12, 0x0

    .line 296
    .local v12, textStartX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->textAlignment:I

    packed-switch v15, :pswitch_data_0

    .line 306
    :pswitch_0
    cmpl-float v15, v6, v8

    if-lez v15, :cond_a

    .line 307
    sub-float v15, v6, v8

    const/high16 v16, 0x4000

    div-float v3, v15, v16

    .line 312
    :goto_0
    :pswitch_1
    const/4 v4, 0x0

    .line 313
    .local v4, barStartY:F
    const/4 v13, 0x0

    .line 314
    .local v13, textStartY:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_6

    .line 315
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->baseline:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_b

    .line 316
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->barHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->baseline:F

    move/from16 v16, v0

    sub-float v13, v15, v16

    .line 322
    :cond_6
    :goto_1
    invoke-static {v2}, Lcom/itextpdf/text/pdf/Barcode39;->getBarsCode39(Ljava/lang/String;)[B

    move-result-object v5

    .line 323
    .local v5, bars:[B
    const/4 v11, 0x1

    .line 324
    .local v11, print:Z
    if-eqz p2, :cond_7

    .line 325
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 326
    :cond_7
    const/4 v9, 0x0

    .local v9, k:I
    :goto_2
    array-length v15, v5

    if-ge v9, v15, :cond_e

    .line 327
    aget-byte v15, v5, v9

    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    .line 328
    .local v14, w:F
    :goto_3
    if-eqz v11, :cond_8

    .line 329
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->inkSpreading:F

    sub-float v15, v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->barHeight:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v3, v4, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 330
    :cond_8
    if-nez v11, :cond_d

    const/4 v11, 0x1

    .line 331
    :goto_4
    add-float/2addr v3, v14

    .line 326
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 300
    .end local v4           #barStartY:F
    .end local v5           #bars:[B
    .end local v9           #k:I
    .end local v11           #print:Z
    .end local v13           #textStartY:F
    .end local v14           #w:F
    :pswitch_2
    cmpl-float v15, v6, v8

    if-lez v15, :cond_9

    .line 301
    sub-float v3, v6, v8

    goto :goto_0

    .line 303
    :cond_9
    sub-float v12, v8, v6

    .line 304
    goto :goto_0

    .line 309
    :cond_a
    sub-float v15, v8, v6

    const/high16 v16, 0x4000

    div-float v12, v15, v16

    goto :goto_0

    .line 318
    .restart local v4       #barStartY:F
    .restart local v13       #textStartY:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    neg-float v13, v15

    .line 319
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->baseline:F

    add-float v4, v13, v15

    goto :goto_1

    .line 327
    .restart local v5       #bars:[B
    .restart local v9       #k:I
    .restart local v11       #print:Z
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->n:F

    move/from16 v16, v0

    mul-float v14, v15, v16

    goto :goto_3

    .line 330
    .restart local v14       #w:F
    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    .line 333
    .end local v14           #w:F
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v15, :cond_10

    .line 335
    if-eqz p3, :cond_f

    .line 336
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 337
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 338
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/Barcode39;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode39;->size:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 339
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 340
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 343
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/Barcode39;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v15

    return-object v15

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
