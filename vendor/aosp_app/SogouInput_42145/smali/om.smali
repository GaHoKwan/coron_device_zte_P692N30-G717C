.class Lom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrj;


# instance fields
.field final synthetic a:Lol;


# direct methods
.method constructor <init>(Lol;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lom;->a:Lol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v2, p0, Lom;->a:Lol;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartTransfer   mExpressionPackageDownloadListener != null="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lol;->a(Lol;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p1}, Lol;->b(Lol;I)I

    .line 105
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    iget-object v1, p0, Lom;->a:Lol;

    invoke-static {v1}, Lol;->a(Lol;)Lsg;

    move-result-object v1

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lon;->a(ILjava/lang/String;)I

    move-result v1

    .line 109
    :cond_0
    return v1

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lom;->a:Lol;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareTransfer   mExpressionPackageDownloadListener != null="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lol;->a(Lol;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    iget-object v1, p0, Lom;->a:Lol;

    invoke-static {v1}, Lol;->a(Lol;)Lsg;

    move-result-object v1

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lon;->a(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p1}, Lol;->a(Lol;I)I

    .line 79
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p2}, Lol;->b(Lol;I)I

    .line 81
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    iget-object v2, p0, Lom;->a:Lol;

    invoke-static {v2}, Lol;->a(Lol;)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lom;->a:Lol;

    invoke-static {v2}, Lol;->a(Lol;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x186a0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 83
    :cond_0
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    iget-object v1, p0, Lom;->a:Lol;

    invoke-static {v1}, Lol;->a(Lol;)Lsg;

    move-result-object v1

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lon;->a(IILjava/lang/String;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lom;->a:Lol;

    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lol;->a(Lol;D)D

    .line 87
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lol;->a(Lol;J)J

    .line 90
    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lom;->a:Lol;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelTransfer   mExpressionPackageDownloadListener != null="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lol;->a(Lol;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    iget-object v1, p0, Lom;->a:Lol;

    invoke-static {v1}, Lol;->a(Lol;)Lsg;

    move-result-object v1

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lon;->b(Ljava/lang/String;)V

    .line 129
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lom;->a:Lol;

    invoke-static {v2}, Lol;->a(Lol;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lom;->a:Lol;

    invoke-static {v2}, Lol;->a(Lol;)Lsg;

    move-result-object v2

    invoke-virtual {v2}, Lsg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 134
    :cond_1
    return-void

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v1, p0, Lom;->a:Lol;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishTransfer   mExpressionPackageDownloadListener != null="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lol;->a(Lol;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p1}, Lol;->a(Lol;I)I

    .line 95
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p2}, Lol;->b(Lol;I)I

    .line 96
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    iget-object v1, p0, Lom;->a:Lol;

    invoke-static {v1}, Lol;->a(Lol;)Lsg;

    move-result-object v1

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lon;->c(IILjava/lang/String;)V

    .line 100
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    iget-object v1, p0, Lom;->a:Lol;

    invoke-static {v1}, Lol;->a(Lol;)Lsg;

    move-result-object v1

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lon;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v1, p0, Lom;->a:Lol;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorTransfer   mExpressionPackageDownloadListener != null="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lol;->a(Lol;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p1}, Lol;->a(Lol;I)I

    .line 140
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p2}, Lol;->b(Lol;I)I

    .line 141
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    iget-object v1, p0, Lom;->a:Lol;

    invoke-static {v1}, Lol;->a(Lol;)Lsg;

    move-result-object v1

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lon;->d(IILjava/lang/String;)V

    .line 146
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v1, p0, Lom;->a:Lol;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPauseTransfer   mExpressionPackageDownloadListener != null="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lol;->a(Lol;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p1}, Lol;->a(Lol;I)I

    .line 152
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0, p2}, Lol;->b(Lol;I)I

    .line 153
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lom;->a:Lol;

    invoke-static {v0}, Lol;->a(Lol;)Lon;

    move-result-object v0

    iget-object v1, p0, Lom;->a:Lol;

    invoke-static {v1}, Lol;->a(Lol;)Lsg;

    move-result-object v1

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lon;->b(IILjava/lang/String;)V

    .line 159
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
