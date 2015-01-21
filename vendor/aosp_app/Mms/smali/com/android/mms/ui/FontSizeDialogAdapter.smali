.class public Lcom/android/mms/ui/FontSizeDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontSizeDialogAdapter.java"


# instance fields
.field private mChoices:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTV:Landroid/widget/CheckedTextView;

.field private mValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "choices"
    .parameter "values"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mChoices:[Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mValues:[Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mChoices:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mChoices:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mTV:Landroid/widget/CheckedTextView;

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mTV:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mChoices:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mChoices:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mTV:Landroid/widget/CheckedTextView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/mms/ui/FontSizeDialogAdapter;->mValues:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    :cond_0
    return-object p2
.end method
