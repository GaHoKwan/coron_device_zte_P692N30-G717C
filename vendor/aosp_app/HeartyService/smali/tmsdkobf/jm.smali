.class public final Ltmsdkobf/jm;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public tC:Ljava/lang/String;

.field public tD:Ljava/lang/String;

.field public tE:I

.field public tF:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/jm;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/jm;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdkobf/jm;->tE:I

    .line 27
    iput v1, p0, Ltmsdkobf/jm;->tF:I

    .line 71
    iget-object v0, p0, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/jm;->bB(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/jm;->bC(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Ltmsdkobf/jm;->tE:I

    invoke-virtual {p0, v0}, Ltmsdkobf/jm;->be(I)V

    .line 74
    iget v0, p0, Ltmsdkobf/jm;->tF:I

    invoke-virtual {p0, v0}, Ltmsdkobf/jm;->bf(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public final bB(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final bC(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public final be(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Ltmsdkobf/jm;->tE:I

    .line 57
    return-void
.end method

.method public final bf(I)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput p1, p0, Ltmsdkobf/jm;->tF:I

    .line 67
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :cond_0
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    sget-boolean v1, Ltmsdkobf/jm;->N:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 149
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 150
    iget-object v1, p0, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    const-string v2, "encryKey"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 151
    iget-object v1, p0, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    const-string v2, "encryPublicKey"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 152
    iget v1, p0, Ltmsdkobf/jm;->tE:I

    const-string v2, "encryAlgorithm"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 153
    iget v1, p0, Ltmsdkobf/jm;->tF:I

    const-string v2, "zipAlgorithm"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 154
    return-void
.end method

.method public final ee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    return-object v0
.end method

.method public final ef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    check-cast p1, Ltmsdkobf/jm;

    .line 94
    iget-object v1, p0, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget v1, p0, Ltmsdkobf/jm;->tE:I

    iget v2, p1, Ltmsdkobf/jm;->tE:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget v1, p0, Ltmsdkobf/jm;->tF:I

    iget v2, p1, Ltmsdkobf/jm;->tF:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    .line 139
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    .line 141
    iget v0, p0, Ltmsdkobf/jm;->tE:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/jm;->tE:I

    .line 143
    iget v0, p0, Ltmsdkobf/jm;->tF:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/jm;->tF:I

    .line 145
    return-void
.end method

.method public final writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Ltmsdkobf/jm;->tC:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Ltmsdkobf/jm;->tD:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 130
    iget v0, p0, Ltmsdkobf/jm;->tE:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 131
    iget v0, p0, Ltmsdkobf/jm;->tF:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 132
    return-void
.end method
