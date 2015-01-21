.class public final Lo/鷭;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/鷭$鷭;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public Ą:Z

.field public ą:Z

.field public ȃ:Z

.field public ˮ͈:Z

.field public 櫯:Lo/鷭$鷭;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u9ded$\u9ded<TD;>;"
        }
    .end annotation
.end field

.field public 鷭:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    invoke-static {p0, v1}, Lo/Ą;->鷭(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 351
    const-string v0, " id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v0, p0, Lo/鷭;->鷭:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final 鷭(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u9ded$\u9ded<TD;>;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lo/鷭;->櫯:Lo/鷭$鷭;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lo/鷭;->櫯:Lo/鷭$鷭;

    if-eq v0, p1, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lo/鷭;->櫯:Lo/鷭$鷭;

    .line 149
    return-void
.end method
