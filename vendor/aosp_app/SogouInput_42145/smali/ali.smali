.class Lali;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrj;


# instance fields
.field final synthetic a:Lalh;


# direct methods
.method constructor <init>(Lalh;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lali;->a:Lalh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 202
    iget-object v2, p0, Lali;->a:Lalh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartTransfer   mBigramFileDownloadListener != null="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lalh;->a(Lalh;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p1}, Lalh;->b(Lalh;I)I

    .line 204
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    invoke-interface {v0, p1}, Lalm;->a(I)I

    move-result v1

    .line 208
    :goto_1
    return v1

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lali;->a:Lalh;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lalh;->c(Lalh;I)I

    goto :goto_1
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 213
    iget-object v2, p0, Lali;->a:Lalh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareTransfer   mBigramFileDownloadListener != null="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lalh;->a(Lalh;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    invoke-interface {v0}, Lalm;->a()V

    .line 216
    :cond_0
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v2, p0, Lali;->a:Lalh;

    invoke-static {v2}, Lalh;->a(Lalh;)I

    move-result v2

    invoke-static {v0, v2}, Lalh;->a(Lalh;I)V

    .line 217
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, v1}, Lalh;->c(Lalh;I)I

    .line 218
    return-void

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p1}, Lalh;->a(Lalh;I)I

    .line 175
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p2}, Lalh;->b(Lalh;I)I

    .line 177
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    iget-object v2, p0, Lali;->a:Lalh;

    invoke-static {v2}, Lalh;->a(Lalh;)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lali;->a:Lalh;

    invoke-static {v2}, Lalh;->a(Lalh;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x186a0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 179
    :cond_0
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    invoke-interface {v0, p1, p2}, Lalm;->a(II)V

    .line 181
    :cond_1
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v1, p0, Lali;->a:Lalh;

    invoke-static {v1}, Lalh;->a(Lalh;)I

    move-result v1

    iget-object v2, p0, Lali;->a:Lalh;

    invoke-static {v2}, Lalh;->a(Lalh;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0450

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p2, p1, v2}, Lalh;->a(Lalh;IIILjava/lang/String;)V

    .line 182
    iget-object v0, p0, Lali;->a:Lalh;

    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lalh;->a(Lalh;D)D

    .line 183
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lalh;->a(Lalh;J)J

    .line 185
    :cond_2
    iget-object v0, p0, Lali;->a:Lalh;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lalh;->c(Lalh;I)I

    .line 186
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lali;->a:Lalh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelTransfer   mBigramFileDownloadListener != null="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lalh;->a(Lalh;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    invoke-interface {v0}, Lalm;->b()V

    .line 225
    :cond_0
    iget-object v0, p0, Lali;->a:Lalh;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lalh;->c(Lalh;I)I

    .line 226
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v1, p0, Lali;->a:Lalh;

    invoke-static {v1}, Lalh;->a(Lalh;)I

    move-result v1

    invoke-static {v0, v1}, Lalh;->a(Lalh;I)V

    .line 227
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0}, Lalh;->c(Lalh;)V

    .line 228
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sgim_bigram.bin.temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    :cond_1
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-virtual {v0}, Lalh;->c()V

    .line 233
    return-void

    .line 222
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-object v2, p0, Lali;->a:Lalh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishTransfer   mBigramFileDownloadListener != null="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lalh;->a(Lalh;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p1}, Lalh;->a(Lalh;I)I

    .line 191
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p2}, Lalh;->b(Lalh;I)I

    .line 192
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    invoke-interface {v0, p1, p2}, Lalm;->c(II)V

    .line 194
    :cond_0
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, v1}, Lalh;->c(Lalh;I)I

    .line 195
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v1, p0, Lali;->a:Lalh;

    invoke-static {v1}, Lalh;->a(Lalh;)I

    move-result v1

    invoke-static {v0, v1}, Lalh;->a(Lalh;I)V

    .line 196
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0}, Lalh;->b(Lalh;)V

    .line 197
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0}, Lalh;->c(Lalh;)V

    .line 198
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-virtual {v0}, Lalh;->c()V

    .line 199
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 237
    iget-object v1, p0, Lali;->a:Lalh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorTransfer   mBigramFileDownloadListener != null="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lalh;->a(Lalh;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p1}, Lalh;->a(Lalh;I)I

    .line 239
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p2}, Lalh;->b(Lalh;I)I

    .line 240
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    invoke-interface {v0, p1, p2}, Lalm;->d(II)V

    .line 242
    :cond_0
    iget-object v0, p0, Lali;->a:Lalh;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lalh;->c(Lalh;I)I

    .line 243
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0}, Lalh;->c(Lalh;)V

    .line 244
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-virtual {v0}, Lalh;->c()V

    .line 245
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v1, p0, Lali;->a:Lalh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPauseTransfer   mBigramFileDownloadListener != null="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lalh;->a(Lalh;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p1}, Lalh;->a(Lalh;I)I

    .line 251
    iget-object v0, p0, Lali;->a:Lalh;

    invoke-static {v0, p2}, Lalh;->b(Lalh;I)I

    .line 252
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v0, v0, Lalh;->a:Lalm;

    invoke-interface {v0, p1, p2}, Lalm;->b(II)V

    .line 255
    :cond_0
    iget-object v0, p0, Lali;->a:Lalh;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lalh;->c(Lalh;I)I

    .line 256
    iget-object v0, p0, Lali;->a:Lalh;

    iget-object v1, p0, Lali;->a:Lalh;

    invoke-static {v1}, Lalh;->a(Lalh;)I

    move-result v1

    iget-object v2, p0, Lali;->a:Lalh;

    invoke-static {v2}, Lalh;->a(Lalh;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b045f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p2, p1, v2}, Lalh;->a(Lalh;IIILjava/lang/String;)V

    .line 258
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
