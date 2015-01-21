.class public final Llb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;
    .locals 3
    .parameter

    .prologue
    .line 153
    new-instance v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    invoke-direct {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;J)J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    return-object v0
.end method

.method public a(I)[Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;
    .locals 1
    .parameter

    .prologue
    .line 162
    new-array v0, p1, [Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Llb;->a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Llb;->a(I)[Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    move-result-object v0

    return-object v0
.end method
