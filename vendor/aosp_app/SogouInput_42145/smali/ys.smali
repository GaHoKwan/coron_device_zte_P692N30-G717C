.class public final Lys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;
    .locals 2
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    invoke-direct {v0}, Lcom/sohu/inputmethod/platform/PlatformAppInfo;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->c:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->c:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->h:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->i:Ljava/lang/String;

    .line 40
    return-object v0
.end method

.method public a(I)[Lcom/sohu/inputmethod/platform/PlatformAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 44
    new-array v0, p1, [Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lys;->a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lys;->a(I)[Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    return-object v0
.end method
