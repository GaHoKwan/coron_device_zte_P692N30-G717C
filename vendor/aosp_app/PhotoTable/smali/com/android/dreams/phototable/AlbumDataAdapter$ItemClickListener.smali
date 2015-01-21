.class Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/AlbumDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/dreams/phototable/AlbumDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;->this$0:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dreams/phototable/AlbumDataAdapter;Lcom/android/dreams/phototable/AlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;-><init>(Lcom/android/dreams/phototable/AlbumDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 154
    const v5, 0x7f0b0005

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 155
    .local v3, vCheckBox:Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v5, v3, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    move-object v0, v3

    .line 156
    check-cast v0, Landroid/widget/CheckBox;

    .line 157
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f0b0003

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 159
    .local v1, data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 160
    .local v2, isChecked:Z
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 161
    iget-object v5, p0, Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;->this$0:Lcom/android/dreams/phototable/AlbumDataAdapter;

    #getter for: Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;
    invoke-static {v5}, Lcom/android/dreams/phototable/AlbumDataAdapter;->access$100(Lcom/android/dreams/phototable/AlbumDataAdapter;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v5

    iget-object v6, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/android/dreams/phototable/AlbumSettings;->setAlbumEnabled(Ljava/lang/String;Z)V

    .line 167
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .end local v2           #isChecked:Z
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 168
    return-void

    .line 159
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    .restart local v1       #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
