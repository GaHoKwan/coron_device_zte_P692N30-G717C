.class public final Ltmsdkobf/ca;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public ig:Z

.field public ih:I

.field public ii:I

.field public time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/ca;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/ca;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput v1, p0, Ltmsdkobf/ca;->time:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/ca;->ig:Z

    .line 25
    iput v1, p0, Ltmsdkobf/ca;->ih:I

    .line 27
    iput v1, p0, Ltmsdkobf/ca;->ii:I

    .line 71
    iget v0, p0, Ltmsdkobf/ca;->time:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ca;->B(I)V

    .line 72
    iget-boolean v0, p0, Ltmsdkobf/ca;->ig:Z

    invoke-virtual {p0, v0}, Ltmsdkobf/ca;->a(Z)V

    .line 73
    iget v0, p0, Ltmsdkobf/ca;->ih:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ca;->ae(I)V

    .line 74
    iget v0, p0, Ltmsdkobf/ca;->ii:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ca;->af(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Ltmsdkobf/ca;->ih:I

    return v0
.end method

.method public B(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 36
    iput p1, p0, Ltmsdkobf/ca;->time:I

    .line 37
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter "bEngross"

    .prologue
    .line 46
    iput-boolean p1, p0, Ltmsdkobf/ca;->ig:Z

    .line 47
    return-void
.end method

.method public ae(I)V
    .locals 0
    .parameter "validEndTime"

    .prologue
    .line 56
    iput p1, p0, Ltmsdkobf/ca;->ih:I

    .line 57
    return-void
.end method

.method public af(I)V
    .locals 0
    .parameter "exectime"

    .prologue
    .line 66
    iput p1, p0, Ltmsdkobf/ca;->ii:I

    .line 67
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 117
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 119
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/ca;->N:Z

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

    .line 87
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 92
    check-cast v0, Ltmsdkobf/ca;

    .line 93
    .local v0, t:Ltmsdkobf/ca;
    iget v2, p0, Ltmsdkobf/ca;->time:I

    iget v3, v0, Ltmsdkobf/ca;->time:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ltmsdkobf/ca;->ig:Z

    iget-boolean v3, v0, Ltmsdkobf/ca;->ig:Z

    invoke-static {v2, v3}, Ltmsdkobf/dg;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ca;->ih:I

    iget v3, v0, Ltmsdkobf/ca;->ih:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ca;->ii:I

    iget v3, v0, Ltmsdkobf/ca;->ii:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    iget v0, p0, Ltmsdkobf/ca;->time:I

    invoke-virtual {p1, v0, v2, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ca;->B(I)V

    .line 139
    iget-boolean v0, p0, Ltmsdkobf/ca;->ig:Z

    invoke-virtual {p1, v0, v1, v1}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ca;->a(Z)V

    .line 141
    iget v0, p0, Ltmsdkobf/ca;->ih:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ca;->ae(I)V

    .line 143
    iget v0, p0, Ltmsdkobf/ca;->ii:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ca;->af(I)V

    .line 145
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 128
    iget v0, p0, Ltmsdkobf/ca;->time:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 129
    iget-boolean v0, p0, Ltmsdkobf/ca;->ig:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(ZI)V

    .line 130
    iget v0, p0, Ltmsdkobf/ca;->ih:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 131
    iget v0, p0, Ltmsdkobf/ca;->ii:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 132
    return-void
.end method

.method public z()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Ltmsdkobf/ca;->time:I

    return v0
.end method
