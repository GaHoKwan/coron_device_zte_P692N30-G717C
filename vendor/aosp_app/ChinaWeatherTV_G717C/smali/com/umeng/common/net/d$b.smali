.class Lcom/umeng/common/net/d$b;
.super Ljava/lang/Object;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/umeng/common/net/DownloadingService$b;

.field b:Lcom/umeng/common/net/d$a;

.field c:I

.field d:I

.field e:Lcom/umeng/common/net/a$a;

.field f:[J


# direct methods
.method public constructor <init>(Lcom/umeng/common/net/a$a;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/umeng/common/net/d$b;->f:[J

    .line 71
    iput p2, p0, Lcom/umeng/common/net/d$b;->c:I

    .line 72
    iput-object p1, p0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/common/net/d$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lcom/umeng/common/net/d$b;->c:I

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public b(Landroid/util/SparseArray;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/common/net/d$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/umeng/common/net/d$b;->c:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/umeng/common/net/d$b;->c:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    :cond_0
    return-void
.end method
