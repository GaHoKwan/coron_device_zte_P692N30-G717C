.class public final Ltmsdkobf/az;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static eu:Ltmsdkobf/co;


# instance fields
.field public en:Ljava/lang/String;

.field public eo:Ljava/lang/String;

.field public ep:Ljava/lang/String;

.field public eq:I

.field public er:Ljava/lang/String;

.field public es:I

.field public et:Ltmsdkobf/co;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/az;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/az;->N:Z

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

    iput-object v0, p0, Ltmsdkobf/az;->en:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/az;->eo:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/az;->ep:Ljava/lang/String;

    .line 27
    iput v1, p0, Ltmsdkobf/az;->eq:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/az;->er:Ljava/lang/String;

    .line 31
    iput v1, p0, Ltmsdkobf/az;->es:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/az;->et:Ltmsdkobf/co;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILtmsdkobf/co;)V
    .locals 2
    .parameter "nArea"
    .parameter "nOperator"
    .parameter "nType"
    .parameter "nQuerytype"
    .parameter "strHardinfo"
    .parameter "nSys"
    .parameter "additionalInfo"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/az;->en:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/az;->eo:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/az;->ep:Ljava/lang/String;

    .line 27
    iput v1, p0, Ltmsdkobf/az;->eq:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/az;->er:Ljava/lang/String;

    .line 31
    iput v1, p0, Ltmsdkobf/az;->es:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/az;->et:Ltmsdkobf/co;

    .line 111
    iput-object p1, p0, Ltmsdkobf/az;->en:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Ltmsdkobf/az;->eo:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Ltmsdkobf/az;->ep:Ljava/lang/String;

    .line 114
    iput p4, p0, Ltmsdkobf/az;->eq:I

    .line 115
    iput-object p5, p0, Ltmsdkobf/az;->er:Ljava/lang/String;

    .line 116
    iput p6, p0, Ltmsdkobf/az;->es:I

    .line 117
    iput-object p7, p0, Ltmsdkobf/az;->et:Ltmsdkobf/co;

    .line 118
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 155
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 157
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 159
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/az;->N:Z

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

    .line 122
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 127
    check-cast v0, Ltmsdkobf/az;

    .line 128
    .local v0, t:Ltmsdkobf/az;
    iget-object v2, p0, Ltmsdkobf/az;->en:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/az;->en:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/az;->eo:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/az;->eo:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/az;->ep:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/az;->ep:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/az;->eq:I

    iget v3, v0, Ltmsdkobf/az;->eq:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/az;->er:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/az;->er:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/az;->es:I

    iget v3, v0, Ltmsdkobf/az;->es:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/az;->et:Ltmsdkobf/co;

    iget-object v3, v0, Ltmsdkobf/az;->et:Ltmsdkobf/co;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 185
    invoke-virtual {p1, v3, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/az;->en:Ljava/lang/String;

    .line 186
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/az;->eo:Ljava/lang/String;

    .line 187
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/az;->ep:Ljava/lang/String;

    .line 188
    iget v0, p0, Ltmsdkobf/az;->eq:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/az;->eq:I

    .line 189
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/az;->er:Ljava/lang/String;

    .line 190
    iget v0, p0, Ltmsdkobf/az;->es:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/az;->es:I

    .line 191
    sget-object v0, Ltmsdkobf/az;->eu:Ltmsdkobf/co;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ltmsdkobf/co;

    invoke-direct {v0}, Ltmsdkobf/co;-><init>()V

    sput-object v0, Ltmsdkobf/az;->eu:Ltmsdkobf/co;

    .line 195
    :cond_0
    sget-object v0, Ltmsdkobf/az;->eu:Ltmsdkobf/co;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/co;

    iput-object v0, p0, Ltmsdkobf/az;->et:Ltmsdkobf/co;

    .line 196
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 166
    iget-object v0, p0, Ltmsdkobf/az;->en:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 167
    iget-object v0, p0, Ltmsdkobf/az;->eo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Ltmsdkobf/az;->ep:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 169
    iget v0, p0, Ltmsdkobf/az;->eq:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 170
    iget-object v0, p0, Ltmsdkobf/az;->er:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Ltmsdkobf/az;->er:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 174
    :cond_0
    iget v0, p0, Ltmsdkobf/az;->es:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 175
    iget-object v0, p0, Ltmsdkobf/az;->et:Ltmsdkobf/co;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Ltmsdkobf/az;->et:Ltmsdkobf/co;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 179
    :cond_1
    return-void
.end method
