.class public Lcom/iflytek/c/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Z

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/c/a;->a:Ljava/lang/String;

    sput-boolean v1, Lcom/iflytek/c/a;->b:Z

    sput v1, Lcom/iflytek/c/a;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/c/d;->b:[Ljava/lang/String;

    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/iflytek/c/c;->b:[Ljava/lang/String;

    :cond_0
    :goto_0
    if-ltz p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v0, v0, p0

    :goto_1
    return-object v0

    :cond_1
    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/c/b;->b:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static a(Ljava/util/Locale;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/iflytek/c/a;->c:I

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    sput v0, Lcom/iflytek/c/a;->c:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/iflytek/c/a;->c:I

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/c/a;->b:Z

    return v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/c/d;->a:[Ljava/lang/String;

    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/iflytek/c/c;->a:[Ljava/lang/String;

    :cond_0
    :goto_0
    if-ltz p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v0, v0, p0

    :goto_1
    return-object v0

    :cond_1
    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/c/b;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static c(I)[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/c/d;->c:[[Ljava/lang/String;

    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/iflytek/c/c;->c:[[Ljava/lang/String;

    :cond_0
    :goto_0
    if-ltz p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v0, v0, p0

    :goto_1
    return-object v0

    :cond_1
    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/c/b;->c:[[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static d(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/iflytek/c/d;->d:[Ljava/lang/String;

    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/iflytek/c/c;->d:[Ljava/lang/String;

    :cond_0
    :goto_0
    if-lez p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v0, v0, p0

    :goto_1
    return-object v0

    :cond_1
    sget v1, Lcom/iflytek/c/a;->c:I

    if-ne v1, v3, :cond_0

    sget-object v0, Lcom/iflytek/c/b;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/iflytek/c/a;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static e(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/c/d;->e:[Ljava/lang/String;

    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/iflytek/c/c;->e:[Ljava/lang/String;

    :cond_0
    :goto_0
    if-ltz p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v0, v0, p0

    :goto_1
    return-object v0

    :cond_1
    sget v1, Lcom/iflytek/c/a;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/c/b;->e:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
