.class public Lorg/apache/commons/compress/archivers/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/c;
.implements Lorg/apache/commons/compress/archivers/c/e;


# static fields
.field public static final MILLIS_PER_SECOND:I = 0x3e8

.field public static final ii:I = 0x1f

.field public static final ij:I = 0x41ed

.field public static final ik:I = 0x81a4


# instance fields
.field private eu:Z

.field private file:Ljava/io/File;

.field private groupName:Ljava/lang/String;

.field private ia:I

.field private ib:J

.field private ic:B

.field private id:Ljava/lang/String;

.field private ie:Ljava/lang/String;

.field private if:I

.field private ig:I

.field private ih:J

.field private mode:I

.field private name:Ljava/lang/String;

.field private size:J

.field private userId:I

.field private userName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    const/16 v3, 0x1f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ustar\u0000"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ie:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->id:Ljava/lang/String;

    const-string v0, "user.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput v2, p0, Lorg/apache/commons/compress/archivers/c/f;->userId:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/f;->ia:I

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->userName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->groupName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/c/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/c/f;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/f;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x41ed

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/f;->mode:I

    const/16 v0, 0x35

    iput-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->size:J

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ib:J

    iput v4, p0, Lorg/apache/commons/compress/archivers/c/f;->if:I

    iput v4, p0, Lorg/apache/commons/compress/archivers/c/f;->ig:I

    return-void

    :cond_1
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v0, 0x81a4

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/f;->mode:I

    const/16 v0, 0x30

    iput-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->size:J

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/c/f;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/c/f;-><init>(Ljava/lang/String;)V

    iput-byte p2, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_0

    const-string v0, "ustar "

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ie:Ljava/lang/String;

    const-string v0, " \u0000"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->version:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/f;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/c/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/f;->if:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/f;->ig:I

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v0, 0x41ed

    :goto_0
    iput v0, p0, Lorg/apache/commons/compress/archivers/c/f;->mode:I

    if-eqz v1, :cond_1

    const/16 v0, 0x35

    :goto_1
    iput-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/f;->userId:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/f;->ia:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->size:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ib:J

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->userName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->groupName:Ljava/lang/String;

    return-void

    :cond_0
    const v0, 0x81a4

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/f;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/c/f;->i([B)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/e;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/f;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/c/f;->a([BLorg/apache/commons/compress/archivers/zip/e;)V

    return-void
.end method

.method private a(J[BIIZ)I
    .locals 5

    const-wide/16 v3, 0x0

    if-nez p6, :cond_1

    cmp-long v0, p1, v3

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x1

    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x3

    shl-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {v3, v4, p3, p4, p5}, Lorg/apache/commons/compress/archivers/c/g;->c(J[BII)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/compress/archivers/c/g;->d(J[BII)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez p1, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, "netware"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private b([BLorg/apache/commons/compress/archivers/zip/e;Z)V
    .locals 7

    const/16 v6, 0x9b

    const/16 v5, 0xc

    const/16 v4, 0x20

    const/16 v3, 0x64

    const/16 v2, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-static {p1, v0, v3}, Lorg/apache/commons/compress/archivers/c/g;->n([BII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lorg/apache/commons/compress/archivers/c/g;->m([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/f;->mode:I

    const/16 v0, 0x6c

    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/c/g;->m([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/f;->userId:I

    const/16 v0, 0x74

    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/c/g;->m([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ia:I

    const/16 v0, 0x7c

    invoke-static {p1, v0, v5}, Lorg/apache/commons/compress/archivers/c/g;->m([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->size:J

    const/16 v0, 0x88

    invoke-static {p1, v0, v5}, Lorg/apache/commons/compress/archivers/c/g;->m([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ib:J

    const/16 v0, 0x9c

    const/16 v1, 0x9d

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    if-eqz p3, :cond_3

    invoke-static {p1, v1, v3}, Lorg/apache/commons/compress/archivers/c/g;->n([BII)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->id:Ljava/lang/String;

    const/16 v0, 0x101

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/c/g;->n([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ie:Ljava/lang/String;

    const/16 v0, 0x107

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/c/g;->n([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->version:Ljava/lang/String;

    const/16 v0, 0x109

    if-eqz p3, :cond_4

    invoke-static {p1, v0, v4}, Lorg/apache/commons/compress/archivers/c/g;->n([BII)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->userName:Ljava/lang/String;

    const/16 v0, 0x129

    if-eqz p3, :cond_5

    invoke-static {p1, v0, v4}, Lorg/apache/commons/compress/archivers/c/g;->n([BII)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->groupName:Ljava/lang/String;

    const/16 v0, 0x149

    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/c/g;->m([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/f;->if:I

    const/16 v0, 0x151

    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/c/g;->m([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ig:I

    const/16 v0, 0x159

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/c/f;->j([B)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    if-eqz p3, :cond_6

    invoke-static {p1, v0, v6}, Lorg/apache/commons/compress/archivers/c/g;->n([BII)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/f;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    :cond_1
    :goto_5
    return-void

    :cond_2
    invoke-static {p1, v0, v3, p2}, Lorg/apache/commons/compress/archivers/c/g;->a([BIILorg/apache/commons/compress/archivers/zip/e;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-static {p1, v1, v3, p2}, Lorg/apache/commons/compress/archivers/c/g;->a([BIILorg/apache/commons/compress/archivers/zip/e;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v0, v4, p2}, Lorg/apache/commons/compress/archivers/c/g;->a([BIILorg/apache/commons/compress/archivers/zip/e;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    invoke-static {p1, v0, v4, p2}, Lorg/apache/commons/compress/archivers/c/g;->a([BIILorg/apache/commons/compress/archivers/zip/e;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_0
    const/16 v0, 0x1e2

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/c/g;->d([BI)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/f;->eu:Z

    const/16 v0, 0x1e3

    invoke-static {p1, v0, v5}, Lorg/apache/commons/compress/archivers/c/g;->l([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ih:J

    goto :goto_5

    :cond_6
    invoke-static {p1, v0, v6, p2}, Lorg/apache/commons/compress/archivers/c/g;->a([BIILorg/apache/commons/compress/archivers/zip/e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private j([B)I
    .locals 3

    const/16 v2, 0x101

    const/4 v1, 0x6

    const-string v0, "ustar "

    invoke-static {v0, p1, v2, v1}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const-string v0, "ustar\u0000"

    invoke-static {v0, p1, v2, v1}, Lorg/apache/commons/compress/a/d;->a(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public F(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major device number is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/apache/commons/compress/archivers/c/f;->if:I

    return-void
.end method

.method public G(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minor device number is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/apache/commons/compress/archivers/c/f;->ig:I

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ib:J

    return-void
.end method

.method public a([BLorg/apache/commons/compress/archivers/zip/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/f;->b([BLorg/apache/commons/compress/archivers/zip/e;Z)V

    return-void
.end method

.method public a([BLorg/apache/commons/compress/archivers/zip/e;Z)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-static {v1, p1, v0, v2, p2}, Lorg/apache/commons/compress/archivers/c/g;->a(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/e;)I

    move-result v4

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->mode:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/f;->a(J[BIIZ)I

    move-result v4

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->userId:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/f;->a(J[BIIZ)I

    move-result v4

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ia:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/f;->a(J[BIIZ)I

    move-result v4

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/c/f;->size:J

    const/16 v5, 0xc

    move-object v0, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/f;->a(J[BIIZ)I

    move-result v4

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/c/f;->ib:J

    const/16 v5, 0xc

    move-object v0, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/f;->a(J[BIIZ)I

    move-result v7

    const/4 v0, 0x0

    move v1, v7

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    aput-byte v3, p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    iget-byte v2, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    aput-byte v2, p1, v1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->id:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-static {v1, p1, v0, v2, p2}, Lorg/apache/commons/compress/archivers/c/g;->a(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/e;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->ie:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/compress/archivers/c/g;->b(Ljava/lang/String;[BII)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->version:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/compress/archivers/c/g;->b(Ljava/lang/String;[BII)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->userName:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v1, p1, v0, v2, p2}, Lorg/apache/commons/compress/archivers/c/g;->a(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/e;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->groupName:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v1, p1, v0, v2, p2}, Lorg/apache/commons/compress/archivers/c/g;->a(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/e;)I

    move-result v4

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->if:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/f;->a(J[BIIZ)I

    move-result v4

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ig:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/f;->a(J[BIIZ)I

    move-result v0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/c/g;->p([B)J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v7, v2}, Lorg/apache/commons/compress/archivers/c/g;->e(J[BII)I

    return-void
.end method

.method public aw()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/f;->eu:Z

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/c/f;->ia:I

    return-void
.end method

.method public b(Lorg/apache/commons/compress/archivers/c/f;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bA()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x58

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bB()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bC()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bD()[Lorg/apache/commons/compress/archivers/c/f;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/c/f;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/c/f;

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    new-instance v3, Lorg/apache/commons/compress/archivers/c/f;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    aget-object v6, v2, v0

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/c/f;-><init>(Ljava/io/File;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public bg()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/f;->bt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bi()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bj()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bo()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public br()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->groupName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bt()Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/c/f;->ib:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public bu()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    return-object v0
.end method

.method public bv()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->if:I

    return v0
.end method

.method public bw()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ig:I

    return v0
.end method

.method public bx()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ih:J

    return-wide v0
.end method

.method public by()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bz()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "././@LongLink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lorg/apache/commons/compress/archivers/c/f;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/c/f;->t(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/c/f;->u(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/c/f;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/c/f;->b(Lorg/apache/commons/compress/archivers/c/f;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ia:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/f;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h([B)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/c/g;->ki:Lorg/apache/commons/compress/archivers/zip/e;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/c/f;->a([BLorg/apache/commons/compress/archivers/zip/e;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lorg/apache/commons/compress/archivers/c/g;->kj:Lorg/apache/commons/compress/archivers/zip/e;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/c/f;->a([BLorg/apache/commons/compress/archivers/zip/e;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i([B)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/c/g;->ki:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/c/f;->a([BLorg/apache/commons/compress/archivers/zip/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lorg/apache/commons/compress/archivers/c/g;->ki:Lorg/apache/commons/compress/archivers/zip/e;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/c/f;->b([BLorg/apache/commons/compress/archivers/zip/e;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDirectory()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/f;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/f;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ic:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/c/f;->setUserId(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/c/f;->b(I)V

    return-void
.end method

.method public p(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/f;->ib:J

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/c/f;->id:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/c/f;->mode:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/c/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/f;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/c/f;->size:J

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/c/f;->userId:I

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/c/f;->userName:Ljava/lang/String;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/c/f;->groupName:Ljava/lang/String;

    return-void
.end method
