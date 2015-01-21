.class public final Ltmsdkobf/d;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static J:Ltmsdkobf/af;

.field static K:Ltmsdkobf/bs;

.field static L:Ltmsdkobf/l;

.field static M:Ltmsdkobf/cf;

.field static final synthetic N:Z


# instance fields
.field public B:Ltmsdkobf/af;

.field public C:Ltmsdkobf/bs;

.field public D:Ltmsdkobf/l;

.field public E:I

.field public F:Ltmsdkobf/cf;

.field public G:I

.field public H:I

.field public I:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/d;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput-object v1, p0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    .line 23
    iput-object v1, p0, Ltmsdkobf/d;->C:Ltmsdkobf/bs;

    .line 25
    iput-object v1, p0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    .line 27
    iput v0, p0, Ltmsdkobf/d;->E:I

    .line 29
    iput-object v1, p0, Ltmsdkobf/d;->F:Ltmsdkobf/cf;

    .line 31
    iput v0, p0, Ltmsdkobf/d;->G:I

    .line 33
    iput v0, p0, Ltmsdkobf/d;->H:I

    .line 35
    iput v0, p0, Ltmsdkobf/d;->I:I

    .line 119
    iget-object v0, p0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(Ltmsdkobf/af;)V

    .line 120
    iget-object v0, p0, Ltmsdkobf/d;->C:Ltmsdkobf/bs;

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(Ltmsdkobf/bs;)V

    .line 121
    iget-object v0, p0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(Ltmsdkobf/l;)V

    .line 122
    iget v0, p0, Ltmsdkobf/d;->E:I

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(I)V

    .line 123
    iget-object v0, p0, Ltmsdkobf/d;->F:Ltmsdkobf/cf;

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(Ltmsdkobf/cf;)V

    .line 124
    iget v0, p0, Ltmsdkobf/d;->G:I

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->b(I)V

    .line 125
    iget v0, p0, Ltmsdkobf/d;->H:I

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->c(I)V

    .line 126
    iget v0, p0, Ltmsdkobf/d;->I:I

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->d(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public a()Ltmsdkobf/cf;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ltmsdkobf/d;->F:Ltmsdkobf/cf;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter "report_feature"

    .prologue
    .line 74
    iput p1, p0, Ltmsdkobf/d;->E:I

    .line 75
    return-void
.end method

.method public a(Ltmsdkobf/af;)V
    .locals 0
    .parameter "featureKey"

    .prologue
    .line 44
    iput-object p1, p0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    .line 45
    return-void
.end method

.method public a(Ltmsdkobf/bs;)V
    .locals 0
    .parameter "softInfo"

    .prologue
    .line 54
    iput-object p1, p0, Ltmsdkobf/d;->C:Ltmsdkobf/bs;

    .line 55
    return-void
.end method

.method public a(Ltmsdkobf/cf;)V
    .locals 0
    .parameter "uploadFileInfo"

    .prologue
    .line 84
    iput-object p1, p0, Ltmsdkobf/d;->F:Ltmsdkobf/cf;

    .line 85
    return-void
.end method

.method public a(Ltmsdkobf/l;)V
    .locals 0
    .parameter "cloudCheck"

    .prologue
    .line 64
    iput-object p1, p0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    .line 65
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Ltmsdkobf/d;->H:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter "softState"

    .prologue
    .line 94
    iput p1, p0, Ltmsdkobf/d;->G:I

    .line 95
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter "actionLevel"

    .prologue
    .line 104
    iput p1, p0, Ltmsdkobf/d;->H:I

    .line 105
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 177
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 179
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 181
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/d;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public d(I)V
    .locals 0
    .parameter "actionID"

    .prologue
    .line 114
    iput p1, p0, Ltmsdkobf/d;->I:I

    .line 115
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 148
    check-cast v0, Ltmsdkobf/d;

    .line 149
    .local v0, t:Ltmsdkobf/d;
    iget-object v2, p0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget-object v3, v0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/d;->C:Ltmsdkobf/bs;

    iget-object v3, v0, Ltmsdkobf/d;->C:Ltmsdkobf/bs;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget-object v3, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/d;->E:I

    iget v3, v0, Ltmsdkobf/d;->E:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/d;->F:Ltmsdkobf/cf;

    iget-object v3, v0, Ltmsdkobf/d;->F:Ltmsdkobf/cf;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/d;->G:I

    iget v3, v0, Ltmsdkobf/d;->G:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/d;->H:I

    iget v3, v0, Ltmsdkobf/d;->H:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/d;->I:I

    iget v3, v0, Ltmsdkobf/d;->I:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 164
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    sget-object v0, Ltmsdkobf/d;->J:Ltmsdkobf/af;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ltmsdkobf/af;

    invoke-direct {v0}, Ltmsdkobf/af;-><init>()V

    sput-object v0, Ltmsdkobf/d;->J:Ltmsdkobf/af;

    .line 214
    :cond_0
    sget-object v0, Ltmsdkobf/d;->J:Ltmsdkobf/af;

    invoke-virtual {p1, v0, v2, v3}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/af;

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(Ltmsdkobf/af;)V

    .line 216
    sget-object v0, Ltmsdkobf/d;->K:Ltmsdkobf/bs;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Ltmsdkobf/bs;

    invoke-direct {v0}, Ltmsdkobf/bs;-><init>()V

    sput-object v0, Ltmsdkobf/d;->K:Ltmsdkobf/bs;

    .line 220
    :cond_1
    sget-object v0, Ltmsdkobf/d;->K:Ltmsdkobf/bs;

    invoke-virtual {p1, v0, v3, v3}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/bs;

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(Ltmsdkobf/bs;)V

    .line 222
    sget-object v0, Ltmsdkobf/d;->L:Ltmsdkobf/l;

    if-nez v0, :cond_2

    .line 224
    new-instance v0, Ltmsdkobf/l;

    invoke-direct {v0}, Ltmsdkobf/l;-><init>()V

    sput-object v0, Ltmsdkobf/d;->L:Ltmsdkobf/l;

    .line 226
    :cond_2
    sget-object v0, Ltmsdkobf/d;->L:Ltmsdkobf/l;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/l;

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(Ltmsdkobf/l;)V

    .line 228
    iget v0, p0, Ltmsdkobf/d;->E:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(I)V

    .line 230
    sget-object v0, Ltmsdkobf/d;->M:Ltmsdkobf/cf;

    if-nez v0, :cond_3

    .line 232
    new-instance v0, Ltmsdkobf/cf;

    invoke-direct {v0}, Ltmsdkobf/cf;-><init>()V

    sput-object v0, Ltmsdkobf/d;->M:Ltmsdkobf/cf;

    .line 234
    :cond_3
    sget-object v0, Ltmsdkobf/d;->M:Ltmsdkobf/cf;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/cf;

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->a(Ltmsdkobf/cf;)V

    .line 236
    iget v0, p0, Ltmsdkobf/d;->G:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->b(I)V

    .line 238
    iget v0, p0, Ltmsdkobf/d;->H:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->c(I)V

    .line 240
    iget v0, p0, Ltmsdkobf/d;->I:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/d;->d(I)V

    .line 242
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 188
    iget-object v0, p0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 189
    iget-object v0, p0, Ltmsdkobf/d;->C:Ltmsdkobf/bs;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 190
    iget-object v0, p0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 191
    iget v0, p0, Ltmsdkobf/d;->E:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 192
    iget-object v0, p0, Ltmsdkobf/d;->F:Ltmsdkobf/cf;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Ltmsdkobf/d;->F:Ltmsdkobf/cf;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 196
    :cond_0
    iget v0, p0, Ltmsdkobf/d;->G:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 197
    iget v0, p0, Ltmsdkobf/d;->H:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 198
    iget v0, p0, Ltmsdkobf/d;->I:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 199
    return-void
.end method
