.class public final Lvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/multimedia/SogouMedia;
    .locals 3
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    invoke-direct {v0}, Lcom/sohu/inputmethod/multimedia/SogouMedia;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->d:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->f:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:D

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->g:Ljava/lang/String;

    .line 122
    return-object v0
.end method

.method public a(I)[Lcom/sohu/inputmethod/multimedia/SogouMedia;
    .locals 1
    .parameter

    .prologue
    .line 126
    new-array v0, p1, [Lcom/sohu/inputmethod/multimedia/SogouMedia;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lvf;->a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/multimedia/SogouMedia;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lvf;->a(I)[Lcom/sohu/inputmethod/multimedia/SogouMedia;

    move-result-object v0

    return-object v0
.end method
