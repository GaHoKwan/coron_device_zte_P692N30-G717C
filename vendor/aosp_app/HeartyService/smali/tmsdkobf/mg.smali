.class public final Ltmsdkobf/mg;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static iz:Ltmsdkobf/aq;


# instance fields
.field public EL:I

.field public dF:Ljava/lang/String;

.field public ec:Ljava/lang/String;

.field public iv:Ltmsdkobf/aq;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Ltmsdkobf/mg;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/mg;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/mg;->EL:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/mg;->url:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/mg;->iv:Ltmsdkobf/aq;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/mg;->ec:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/mg;->dF:Ljava/lang/String;

    .line 84
    iget v0, p0, Ltmsdkobf/mg;->EL:I

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->cn(I)V

    .line 85
    iget-object v0, p0, Ltmsdkobf/mg;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->setUrl(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Ltmsdkobf/mg;->iv:Ltmsdkobf/aq;

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->a(Ltmsdkobf/aq;)V

    .line 87
    iget-object v0, p0, Ltmsdkobf/mg;->ec:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->J(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Ltmsdkobf/mg;->dF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->C(Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .locals 0
    .parameter "cert"

    .prologue
    .line 79
    iput-object p1, p0, Ltmsdkobf/mg;->dF:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 69
    iput-object p1, p0, Ltmsdkobf/mg;->ec:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public a(Ltmsdkobf/aq;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 59
    iput-object p1, p0, Ltmsdkobf/mg;->iv:Ltmsdkobf/aq;

    .line 60
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 133
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 135
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 137
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/mg;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public cn(I)V
    .locals 0
    .parameter "option"

    .prologue
    .line 39
    iput p1, p0, Ltmsdkobf/mg;->EL:I

    .line 40
    return-void
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 0
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 182
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 102
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 107
    check-cast v0, Ltmsdkobf/mg;

    .line 108
    .local v0, t:Ltmsdkobf/mg;
    iget v2, p0, Ltmsdkobf/mg;->EL:I

    iget v3, v0, Ltmsdkobf/mg;->EL:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/mg;->url:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/mg;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/mg;->iv:Ltmsdkobf/aq;

    iget-object v3, v0, Ltmsdkobf/mg;->iv:Ltmsdkobf/aq;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/mg;->ec:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/mg;->ec:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/mg;->dF:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/mg;->dF:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltmsdkobf/mg;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 120
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const/4 v1, 0x0

    return v1
.end method

.method public ht()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Ltmsdkobf/mg;->EL:I

    return v0
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    iget v0, p0, Ltmsdkobf/mg;->EL:I

    invoke-virtual {p1, v0, v2, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->cn(I)V

    .line 166
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->setUrl(Ljava/lang/String;)V

    .line 168
    sget-object v0, Ltmsdkobf/mg;->iz:Ltmsdkobf/aq;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ltmsdkobf/aq;

    invoke-direct {v0}, Ltmsdkobf/aq;-><init>()V

    sput-object v0, Ltmsdkobf/mg;->iz:Ltmsdkobf/aq;

    .line 172
    :cond_0
    sget-object v0, Ltmsdkobf/mg;->iz:Ltmsdkobf/aq;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/aq;

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->a(Ltmsdkobf/aq;)V

    .line 174
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->J(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/mg;->C(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 49
    iput-object p1, p0, Ltmsdkobf/mg;->url:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 144
    iget v0, p0, Ltmsdkobf/mg;->EL:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 145
    iget-object v0, p0, Ltmsdkobf/mg;->url:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Ltmsdkobf/mg;->iv:Ltmsdkobf/aq;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ltmsdkobf/mg;->iv:Ltmsdkobf/aq;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 150
    :cond_0
    iget-object v0, p0, Ltmsdkobf/mg;->ec:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Ltmsdkobf/mg;->ec:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 154
    :cond_1
    iget-object v0, p0, Ltmsdkobf/mg;->dF:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Ltmsdkobf/mg;->dF:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 158
    :cond_2
    return-void
.end method
