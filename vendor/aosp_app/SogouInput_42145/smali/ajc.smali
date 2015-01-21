.class public final Lajc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;
    .locals 2
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    invoke-direct {v0}, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->f:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->h:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->i:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->j:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->e:I

    .line 45
    return-object v0
.end method

.method public a(I)[Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 49
    new-array v0, p1, [Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lajc;->a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lajc;->a(I)[Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v0

    return-object v0
.end method
