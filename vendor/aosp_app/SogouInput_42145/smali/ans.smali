.class public final Lans;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/sms/SogouMessageItem;
    .locals 4
    .parameter

    .prologue
    .line 328
    new-instance v1, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-direct {v1}, Lcom/sohu/inputmethod/sms/SogouMessageItem;-><init>()V

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->b(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->c(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a(Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a(Lcom/sohu/inputmethod/sms/SogouMessageItem;J)J

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->d(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->e(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->f(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->g(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->b(Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->c(Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a(Lcom/sohu/inputmethod/sms/SogouMessageItem;Z)Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->h(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->i(Lcom/sohu/inputmethod/sms/SogouMessageItem;I)I

    .line 343
    return-object v1

    .line 340
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(I)[Lcom/sohu/inputmethod/sms/SogouMessageItem;
    .locals 1
    .parameter

    .prologue
    .line 347
    new-array v0, p1, [Lcom/sohu/inputmethod/sms/SogouMessageItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lans;->a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lans;->a(I)[Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v0

    return-object v0
.end method
