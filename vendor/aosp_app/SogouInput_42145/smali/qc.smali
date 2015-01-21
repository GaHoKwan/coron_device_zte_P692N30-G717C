.class public final Lqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/expression/PreviewPager$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 575
    new-instance v0, Lcom/sohu/inputmethod/expression/PreviewPager$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sohu/inputmethod/expression/PreviewPager$SavedState;-><init>(Landroid/os/Parcel;Lqa;)V

    return-object v0
.end method

.method public a(I)[Lcom/sohu/inputmethod/expression/PreviewPager$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 579
    new-array v0, p1, [Lcom/sohu/inputmethod/expression/PreviewPager$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lqc;->a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/expression/PreviewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lqc;->a(I)[Lcom/sohu/inputmethod/expression/PreviewPager$SavedState;

    move-result-object v0

    return-object v0
.end method
