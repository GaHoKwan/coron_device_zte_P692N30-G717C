.class Lave;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field final synthetic a:Lavd;

.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Lavd;)V
    .locals 1
    .parameter

    .prologue
    .line 1240
    iput-object p1, p0, Lave;->a:Lavd;

    .line 1241
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lave;->a:Z

    .line 1242
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lave;->a:I

    return v0
.end method

.method public a(JII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1253
    iget-object v0, p0, Lave;->a:Lavd;

    iget-object v0, v0, Lavd;->a:Lave;

    invoke-virtual {v0}, Lave;->a()Z

    .line 1254
    invoke-virtual {p0, p0, p1, p2}, Lave;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lave;->a:Z

    .line 1256
    iput p3, p0, Lave;->a:I

    .line 1257
    iput p4, p0, Lave;->b:I

    .line 1258
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1287
    iget-boolean v1, p0, Lave;->a:Z

    if-eqz v1, :cond_0

    .line 1288
    iput-boolean v0, p0, Lave;->a:Z

    .line 1289
    invoke-virtual {p0, p0}, Lave;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1290
    const/4 v0, 0x1

    .line 1292
    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lave;->b:I

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1311
    iget v0, p0, Lave;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lave;->b:I

    if-ltz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lave;->a:Lavd;

    iget v1, p0, Lave;->b:I

    invoke-virtual {v0, v1}, Lavd;->b(I)V

    .line 1316
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lave;->a:Z

    .line 1317
    return-void
.end method
