.class public final Ltmsdkobf/bz;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public calltime:I

.field public clientlogic:I

.field public phonenum:Ljava/lang/String;

.field public tagtype:I

.field public talktime:I

.field public teltype:I

.field public useraction:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bz;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bz;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bz;->phonenum:Ljava/lang/String;

    .line 23
    sget-object v0, Ltmsdkobf/ad;->dd:Ltmsdkobf/ad;

    invoke-virtual {v0}, Ltmsdkobf/ad;->value()I

    move-result v0

    iput v0, p0, Ltmsdkobf/bz;->useraction:I

    .line 25
    sget-object v0, Ltmsdkobf/ab;->cN:Ltmsdkobf/ab;

    invoke-virtual {v0}, Ltmsdkobf/ab;->value()I

    move-result v0

    iput v0, p0, Ltmsdkobf/bz;->teltype:I

    .line 27
    iput v1, p0, Ltmsdkobf/bz;->talktime:I

    .line 29
    iput v1, p0, Ltmsdkobf/bz;->calltime:I

    .line 31
    sget-object v0, Ltmsdkobf/aa;->cJ:Ltmsdkobf/aa;

    invoke-virtual {v0}, Ltmsdkobf/aa;->value()I

    move-result v0

    iput v0, p0, Ltmsdkobf/bz;->clientlogic:I

    .line 33
    iput v1, p0, Ltmsdkobf/bz;->tagtype:I

    .line 107
    iget-object v0, p0, Ltmsdkobf/bz;->phonenum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->ac(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Ltmsdkobf/bz;->useraction:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->Y(I)V

    .line 109
    iget v0, p0, Ltmsdkobf/bz;->teltype:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->Z(I)V

    .line 110
    iget v0, p0, Ltmsdkobf/bz;->talktime:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->aa(I)V

    .line 111
    iget v0, p0, Ltmsdkobf/bz;->calltime:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->ab(I)V

    .line 112
    iget v0, p0, Ltmsdkobf/bz;->clientlogic:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->ac(I)V

    .line 113
    iget v0, p0, Ltmsdkobf/bz;->tagtype:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->ad(I)V

    .line 114
    return-void
.end method


# virtual methods
.method public Y(I)V
    .locals 0
    .parameter "useraction"

    .prologue
    .line 52
    iput p1, p0, Ltmsdkobf/bz;->useraction:I

    .line 53
    return-void
.end method

.method public Z(I)V
    .locals 0
    .parameter "teltype"

    .prologue
    .line 62
    iput p1, p0, Ltmsdkobf/bz;->teltype:I

    .line 63
    return-void
.end method

.method public aa(I)V
    .locals 0
    .parameter "talktime"

    .prologue
    .line 72
    iput p1, p0, Ltmsdkobf/bz;->talktime:I

    .line 73
    return-void
.end method

.method public ab(I)V
    .locals 0
    .parameter "calltime"

    .prologue
    .line 82
    iput p1, p0, Ltmsdkobf/bz;->calltime:I

    .line 83
    return-void
.end method

.method public ac(I)V
    .locals 0
    .parameter "clientlogic"

    .prologue
    .line 92
    iput p1, p0, Ltmsdkobf/bz;->clientlogic:I

    .line 93
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0
    .parameter "phonenum"

    .prologue
    .line 42
    iput-object p1, p0, Ltmsdkobf/bz;->phonenum:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public ad(I)V
    .locals 0
    .parameter "tagtype"

    .prologue
    .line 102
    iput p1, p0, Ltmsdkobf/bz;->tagtype:I

    .line 103
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 162
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 164
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 166
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bz;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 134
    check-cast v0, Ltmsdkobf/bz;

    .line 135
    .local v0, t:Ltmsdkobf/bz;
    iget-object v2, p0, Ltmsdkobf/bz;->phonenum:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bz;->phonenum:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bz;->useraction:I

    iget v3, v0, Ltmsdkobf/bz;->useraction:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bz;->teltype:I

    iget v3, v0, Ltmsdkobf/bz;->teltype:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bz;->talktime:I

    iget v3, v0, Ltmsdkobf/bz;->talktime:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bz;->calltime:I

    iget v3, v0, Ltmsdkobf/bz;->calltime:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bz;->clientlogic:I

    iget v3, v0, Ltmsdkobf/bz;->clientlogic:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bz;->tagtype:I

    iget v3, v0, Ltmsdkobf/bz;->tagtype:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 149
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->ac(Ljava/lang/String;)V

    .line 190
    iget v0, p0, Ltmsdkobf/bz;->useraction:I

    invoke-virtual {p1, v0, v1, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->Y(I)V

    .line 192
    iget v0, p0, Ltmsdkobf/bz;->teltype:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->Z(I)V

    .line 194
    iget v0, p0, Ltmsdkobf/bz;->talktime:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->aa(I)V

    .line 196
    iget v0, p0, Ltmsdkobf/bz;->calltime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->ab(I)V

    .line 198
    iget v0, p0, Ltmsdkobf/bz;->clientlogic:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->ac(I)V

    .line 200
    iget v0, p0, Ltmsdkobf/bz;->tagtype:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bz;->ad(I)V

    .line 202
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 173
    iget-object v0, p0, Ltmsdkobf/bz;->phonenum:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 174
    iget v0, p0, Ltmsdkobf/bz;->useraction:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 175
    iget v0, p0, Ltmsdkobf/bz;->teltype:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 176
    iget v0, p0, Ltmsdkobf/bz;->talktime:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 177
    iget v0, p0, Ltmsdkobf/bz;->calltime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 178
    iget v0, p0, Ltmsdkobf/bz;->clientlogic:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 179
    iget v0, p0, Ltmsdkobf/bz;->tagtype:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 180
    return-void
.end method
