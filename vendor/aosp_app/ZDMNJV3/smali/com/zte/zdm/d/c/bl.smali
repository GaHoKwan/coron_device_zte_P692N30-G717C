.class public final Lcom/zte/zdm/d/c/bl;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/zte/zdm/d/c/bl;

.field public static final b:Lcom/zte/zdm/d/c/bl;

.field public static final c:Lcom/zte/zdm/d/c/bl;

.field public static final d:Lcom/zte/zdm/d/c/bl;

.field public static final e:Lcom/zte/zdm/d/c/bl;

.field public static final f:Lcom/zte/zdm/d/c/bl;

.field public static final g:Lcom/zte/zdm/d/c/bl;

.field public static final h:[Lcom/zte/zdm/d/c/bl;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/zte/zdm/d/c/bl;

    invoke-direct {v0, v3}, Lcom/zte/zdm/d/c/bl;-><init>(I)V

    sput-object v0, Lcom/zte/zdm/d/c/bl;->a:Lcom/zte/zdm/d/c/bl;

    new-instance v0, Lcom/zte/zdm/d/c/bl;

    invoke-direct {v0, v4}, Lcom/zte/zdm/d/c/bl;-><init>(I)V

    sput-object v0, Lcom/zte/zdm/d/c/bl;->b:Lcom/zte/zdm/d/c/bl;

    new-instance v0, Lcom/zte/zdm/d/c/bl;

    invoke-direct {v0, v5}, Lcom/zte/zdm/d/c/bl;-><init>(I)V

    sput-object v0, Lcom/zte/zdm/d/c/bl;->c:Lcom/zte/zdm/d/c/bl;

    new-instance v0, Lcom/zte/zdm/d/c/bl;

    invoke-direct {v0, v6}, Lcom/zte/zdm/d/c/bl;-><init>(I)V

    sput-object v0, Lcom/zte/zdm/d/c/bl;->d:Lcom/zte/zdm/d/c/bl;

    new-instance v0, Lcom/zte/zdm/d/c/bl;

    invoke-direct {v0, v7}, Lcom/zte/zdm/d/c/bl;-><init>(I)V

    sput-object v0, Lcom/zte/zdm/d/c/bl;->e:Lcom/zte/zdm/d/c/bl;

    new-instance v0, Lcom/zte/zdm/d/c/bl;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bl;-><init>(I)V

    sput-object v0, Lcom/zte/zdm/d/c/bl;->f:Lcom/zte/zdm/d/c/bl;

    new-instance v0, Lcom/zte/zdm/d/c/bl;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bl;-><init>(I)V

    sput-object v0, Lcom/zte/zdm/d/c/bl;->g:Lcom/zte/zdm/d/c/bl;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/zte/zdm/d/c/bl;

    const/4 v1, 0x0

    sget-object v2, Lcom/zte/zdm/d/c/bl;->a:Lcom/zte/zdm/d/c/bl;

    aput-object v2, v0, v1

    sget-object v1, Lcom/zte/zdm/d/c/bl;->b:Lcom/zte/zdm/d/c/bl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/d/c/bl;->c:Lcom/zte/zdm/d/c/bl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/d/c/bl;->d:Lcom/zte/zdm/d/c/bl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/zdm/d/c/bl;->e:Lcom/zte/zdm/d/c/bl;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/zdm/d/c/bl;->f:Lcom/zte/zdm/d/c/bl;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/zdm/d/c/bl;->g:Lcom/zte/zdm/d/c/bl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zdm/d/c/bl;->h:[Lcom/zte/zdm/d/c/bl;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/bl;->a(I)V

    return-void
.end method

.method public static final b(I)Lcom/zte/zdm/d/c/bl;
    .locals 3

    if-ltz p0, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/bl;->h:[Lcom/zte/zdm/d/c/bl;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown syncType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/zte/zdm/d/c/bl;->h:[Lcom/zte/zdm/d/c/bl;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/d/c/bl;->i:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/d/c/bl;->i:I

    return-void
.end method
