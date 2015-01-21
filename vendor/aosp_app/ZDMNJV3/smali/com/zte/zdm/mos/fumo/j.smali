.class public final Lcom/zte/zdm/mos/fumo/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0xa

.field public static final b:I = 0x14

.field public static final c:I = 0x1e

.field public static final d:I = 0x28

.field public static final e:I = 0x32

.field public static final f:I = 0x3c

.field public static final g:I = 0x46

.field public static final h:I = 0x50

.field public static final i:I = 0x5a

.field public static final j:I = 0x64


# instance fields
.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/mos/fumo/j;->k:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/zte/zdm/mos/fumo/j;->k:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/mos/fumo/j;->k:I

    return v0
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    iput p1, p0, Lcom/zte/zdm/mos/fumo/j;->k:I

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/zte/zdm/mos/fumo/j;->k:I

    return-void
.end method
