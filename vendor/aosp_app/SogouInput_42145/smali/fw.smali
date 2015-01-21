.class public final Lfw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lfd;

.field private a:Lff;

.field private a:Lfs;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lfw;->a:Lff;

    .line 43
    iput-object v1, p0, Lfw;->a:Lfd;

    .line 44
    iput v0, p0, Lfw;->a:I

    .line 45
    iput v0, p0, Lfw;->b:I

    .line 46
    iput v0, p0, Lfw;->c:I

    .line 47
    iput v0, p0, Lfw;->d:I

    .line 48
    iput v0, p0, Lfw;->e:I

    .line 49
    iput v0, p0, Lfw;->f:I

    .line 50
    iput v0, p0, Lfw;->g:I

    .line 51
    iput-object v1, p0, Lfw;->a:Lfs;

    .line 52
    return-void
.end method

.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 216
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lfw;->a:I

    return v0
.end method

.method public a()Lfd;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lfw;->a:Lfd;

    return-object v0
.end method

.method public a()Lfs;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lfw;->a:Lfs;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput p1, p0, Lfw;->a:I

    .line 183
    return-void
.end method

.method public a(Lfd;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lfw;->a:Lfd;

    .line 179
    return-void
.end method

.method public a(Lff;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lfw;->a:Lff;

    .line 175
    return-void
.end method

.method public a(Lfs;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lfw;->a:Lfs;

    .line 212
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 120
    iget-object v0, p0, Lfw;->a:Lff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfw;->a:Lfd;

    if-eqz v0, :cond_0

    iget v0, p0, Lfw;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->d:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->f:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->g:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    invoke-static {v0}, Lfw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lfw;->d:I

    iget v1, p0, Lfw;->e:I

    iget v2, p0, Lfw;->f:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfw;->a:Lfs;

    if-eqz v0, :cond_0

    iget v0, p0, Lfw;->b:I

    iget-object v1, p0, Lfw;->a:Lfs;

    invoke-virtual {v1}, Lfs;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfw;->a:Lfs;

    invoke-virtual {v0}, Lfs;->b()I

    move-result v0

    iget-object v1, p0, Lfw;->a:Lfs;

    invoke-virtual {v1}, Lfs;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lfw;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput p1, p0, Lfw;->b:I

    .line 187
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lfw;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput p1, p0, Lfw;->c:I

    .line 191
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lfw;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput p1, p0, Lfw;->d:I

    .line 195
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lfw;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput p1, p0, Lfw;->e:I

    .line 199
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lfw;->g:I

    return v0
.end method

.method public f(I)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput p1, p0, Lfw;->f:I

    .line 203
    return-void
.end method

.method public g(I)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput p1, p0, Lfw;->g:I

    .line 207
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 144
    const-string v1, "<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v1, p0, Lfw;->a:Lff;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v1, p0, Lfw;->a:Lfd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget v1, p0, Lfw;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, "\n matrixWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget v1, p0, Lfw;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 153
    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget v1, p0, Lfw;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, "\n numTotalBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget v1, p0, Lfw;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 157
    const-string v1, "\n numDataBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    iget v1, p0, Lfw;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 159
    const-string v1, "\n numECBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget v1, p0, Lfw;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, "\n numRSBlocks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget v1, p0, Lfw;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    iget-object v1, p0, Lfw;->a:Lfs;

    if-nez v1, :cond_0

    .line 164
    const-string v1, "\n matrix: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :goto_0
    const-string v1, ">>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    const-string v1, "\n matrix:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lfw;->a:Lfs;

    invoke-virtual {v1}, Lfs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
