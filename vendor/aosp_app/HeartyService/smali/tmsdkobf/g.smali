.class public final Ltmsdkobf/g;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public product:I

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/g;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/g;->product:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/g;->version:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/g;->U:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/g;->V:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/g;->W:Ljava/lang/String;

    .line 83
    iget v0, p0, Ltmsdkobf/g;->product:I

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->f(I)V

    .line 84
    iget-object v0, p0, Ltmsdkobf/g;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->setVersion(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Ltmsdkobf/g;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->d(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Ltmsdkobf/g;->V:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->f(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Ltmsdkobf/g;->W:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->g(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "product"
    .parameter "version"
    .parameter "imei"
    .parameter "guid"
    .parameter "ua"

    .prologue
    .line 91
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/g;->product:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/g;->version:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/g;->U:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/g;->V:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/g;->W:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Ltmsdkobf/g;->f(I)V

    .line 93
    invoke-virtual {p0, p2}, Ltmsdkobf/g;->setVersion(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p3}, Ltmsdkobf/g;->d(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p4}, Ltmsdkobf/g;->f(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p5}, Ltmsdkobf/g;->g(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 132
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 134
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 136
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/g;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 58
    iput-object p1, p0, Ltmsdkobf/g;->U:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 106
    check-cast v0, Ltmsdkobf/g;

    .line 107
    .local v0, t:Ltmsdkobf/g;
    iget v2, p0, Ltmsdkobf/g;->product:I

    iget v3, v0, Ltmsdkobf/g;->product:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/g;->version:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/g;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/g;->U:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/g;->U:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/g;->V:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/g;->V:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/g;->W:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/g;->W:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public f(I)V
    .locals 0
    .parameter "product"

    .prologue
    .line 38
    iput p1, p0, Ltmsdkobf/g;->product:I

    .line 39
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter "guid"

    .prologue
    .line 68
    iput-object p1, p0, Ltmsdkobf/g;->V:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter "ua"

    .prologue
    .line 78
    iput-object p1, p0, Ltmsdkobf/g;->W:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 119
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    .line 154
    iget v0, p0, Ltmsdkobf/g;->product:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->f(I)V

    .line 156
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->setVersion(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->d(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->f(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/g;->g(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 48
    iput-object p1, p0, Ltmsdkobf/g;->version:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 143
    iget v0, p0, Ltmsdkobf/g;->product:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 144
    iget-object v0, p0, Ltmsdkobf/g;->version:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Ltmsdkobf/g;->U:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Ltmsdkobf/g;->V:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 147
    iget-object v0, p0, Ltmsdkobf/g;->W:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 148
    return-void
.end method
