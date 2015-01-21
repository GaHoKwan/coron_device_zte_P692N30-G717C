.class Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;
.super Ljava/lang/Object;
.source "EditViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/EditViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EditViewTag"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDuration:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mDuration:Landroid/widget/TextView;

    return-object p1
.end method
