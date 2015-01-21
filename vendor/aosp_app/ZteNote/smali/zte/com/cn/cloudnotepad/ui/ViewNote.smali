.class public Lzte/com/cn/cloudnotepad/ui/ViewNote;
.super Ljava/lang/Object;
.source "ViewNote.java"


# static fields
.field private static final NOTE_OBJECT_Y_OFFSET:I

.field public static mCurObjectContent:Ljava/lang/String;

.field public static mCurPosition:I

.field public static mNotesNumber:I

.field public static mNotesSortList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private mContentText:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field public mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

.field private mCurPlayRecord:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

.field public mView:Landroid/view/View;

.field private noteId:I

.field private notebookName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    .line 49
    sput v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPosition:I

    .line 50
    sput v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    .line 52
    const-string v0, ""

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurObjectContent:Ljava/lang/String;

    .line 55
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->NOTE_OBJECT_Y_OFFSET:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->noteId:I

    .line 53
    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPlayRecord:I

    .line 58
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/ViewNote;Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->createObjectPopupWindow(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    return-void
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/ViewNote;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/ViewNote;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPlayRecord:I

    return v0
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/ui/ViewNote;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPlayRecord:I

    return-void
.end method

.method private createObjectPopupWindow(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 11
    .parameter "view"
    .parameter "controlData"

    .prologue
    const/4 v10, 0x1

    .line 234
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    .local v3, objectListPopup:Landroid/widget/ListPopupWindow;
    invoke-virtual {v3, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 236
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, items:[Ljava/lang/String;
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    .line 240
    const v8, 0x1090009

    .line 239
    invoke-direct {v2, v7, v8, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 242
    .local v2, objectListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    new-instance v7, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;

    invoke-direct {v7, p0, p2, v3}, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNote;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 266
    .local v6, width:I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 267
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 268
    aget v7, v1, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v5, v7, v8

    .line 269
    .local v5, viewBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 270
    .local v4, verticalOffset:I
    sub-int v7, v5, v4

    sget v8, Lzte/com/cn/cloudnotepad/ui/ViewNote;->NOTE_OBJECT_Y_OFFSET:I

    if-le v7, v8, :cond_0

    .line 271
    sub-int v7, v5, v4

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v8

    invoke-virtual {v8}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v8

    sget v9, Lzte/com/cn/cloudnotepad/ui/ViewNote;->NOTE_OBJECT_Y_OFFSET:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_1

    .line 272
    :cond_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v7

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v5, v7

    .line 273
    const-string v7, "zhangxue"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "re location="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v9, v5, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    invoke-virtual {v3, v10}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 276
    invoke-virtual {v3, v6}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 277
    const/4 v7, -0x2

    invoke-virtual {v3, v7}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v7}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 279
    rsub-int/lit8 v7, v4, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 280
    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 281
    return-void
.end method

.method private diaplayImageView(Ljava/lang/String;)V
    .locals 6
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 173
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, image:Landroid/widget/ImageView;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :try_start_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    goto :goto_0
.end method

.method private diaplayTextView(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    new-instance v1, Landroid/widget/EditText;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, editText:Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    const/4 v1, 0x0

    .line 157
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContentText:Landroid/widget/TextView;

    .line 158
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContentText:Landroid/widget/TextView;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    const v5, 0x1030044

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContentText:Landroid/widget/TextView;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContentText:Landroid/widget/TextView;

    const/16 v4, 0xf

    invoke-static {v3, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 164
    :try_start_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v1       #editText:Landroid/widget/EditText;
    .restart local v2       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    goto :goto_0
.end method

.method private displayOtherAttachment(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 9
    .parameter "controlData"

    .prologue
    const/4 v8, 0x0

    .line 187
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    .line 188
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 189
    iget-object v5, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    iget-object v6, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    iget-object v7, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    .line 187
    invoke-static {v3, v4, v5, v6, v7}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->displayOtherAttachment(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 190
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sget v4, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    :try_start_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    goto :goto_0
.end method

.method private displayRecordAttachment(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 10
    .parameter "controlData"

    .prologue
    const/4 v9, 0x0

    .line 201
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    .line 202
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "record"

    invoke-static {v4, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 203
    iget-object v5, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    iget-object v6, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    iget-object v7, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    .line 201
    invoke-static {v3, v4, v5, v6, v7}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->displayRecordAttachment(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 204
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sget v4, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v3, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;

    invoke-direct {v3, p0, v2, p1}, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNote;Landroid/widget/LinearLayout;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :try_start_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    goto :goto_0
.end method

.method public static getNotePosInSortListByGroupPos(Lzte/com/cn/cloudnotepad/data/NotesData;I)I
    .locals 5
    .parameter "notesData"
    .parameter "groupPosition"

    .prologue
    .line 306
    const/4 v3, 0x0

    .line 307
    .local v3, pos:I
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 308
    .local v2, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 314
    return v3

    .line 309
    :cond_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 310
    .local v1, key:Ljava/lang/String;
    if-ge v0, p1, :cond_1

    .line 311
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getNotesSortList(Lzte/com/cn/cloudnotepad/data/NotesData;II)V
    .locals 4
    .parameter "notesData"
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v3, 0x0

    .line 329
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 330
    sput v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPosition:I

    .line 331
    sput v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    .line 332
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 340
    sget v2, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPosition:I

    add-int/2addr v2, p2

    sput v2, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPosition:I

    .line 341
    return-void

    .line 333
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    .local v1, key:Ljava/lang/String;
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 335
    if-le p1, v0, :cond_1

    .line 336
    sget v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPosition:I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v3

    sput v2, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPosition:I

    .line 338
    :cond_1
    sget v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v3

    sput v2, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initLocationDisplay()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 83
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->address:Ljava/lang/String;

    .line 84
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->address:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030019

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 86
    .local v5, view:Landroid/view/View;
    const v6, 0x7f060071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 87
    .local v3, mLocationRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v1, v9, v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const v6, 0x7f06006f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    .local v4, mLocationTextView:Landroid/widget/TextView;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->address:Ljava/lang/String;

    invoke-static {v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getLocationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v6, 0x7f060073

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 95
    .local v2, mLocationImageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v8, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :try_start_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #mLocationImageView:Landroid/widget/ImageView;
    .end local v3           #mLocationRelativeLayout:Landroid/widget/RelativeLayout;
    .end local v4           #mLocationTextView:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v1       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2       #mLocationImageView:Landroid/widget/ImageView;
    .restart local v3       #mLocationRelativeLayout:Landroid/widget/RelativeLayout;
    .restart local v4       #mLocationTextView:Landroid/widget/TextView;
    .restart local v5       #view:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v6, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    goto :goto_0
.end method

.method private viewNote()V
    .locals 6

    .prologue
    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 148
    return-void

    .line 108
    :cond_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v3, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    .line 109
    .local v3, type:Ljava/lang/String;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v0, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    .line 110
    .local v0, content:Ljava/lang/String;
    const-string v4, "text"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->diaplayTextView(Ljava/lang/String;)V

    .line 123
    :goto_1
    move v2, v1

    .line 124
    .local v2, index:I
    const-string v4, "record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "text"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "handwrite"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lzte/com/cn/cloudnotepad/ui/ViewNote$1;

    invoke-direct {v5, p0, v0}, Lzte/com/cn/cloudnotepad/ui/ViewNote$1;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNote;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_1
    const-string v4, "text"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 136
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lzte/com/cn/cloudnotepad/ui/ViewNote$2;

    invoke-direct {v5, p0, v2}, Lzte/com/cn/cloudnotepad/ui/ViewNote$2;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNote;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v2           #index:I
    :cond_3
    const-string v4, "picture"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "doodle"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 113
    const-string v4, "handwrite"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 114
    :cond_4
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->diaplayImageView(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_5
    const-string v4, "video"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 116
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->diaplayImageView(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_6
    const-string v4, "record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 118
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->displayRecordAttachment(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    goto/16 :goto_1

    .line 120
    :cond_7
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->displayOtherAttachment(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public initNote(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "curPosition"

    .prologue
    .line 63
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mView:Landroid/view/View;

    .line 64
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    sget-object v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 68
    new-instance v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    .line 70
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mView:Landroid/view/View;

    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 71
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 73
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->noteId:I

    .line 74
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->notebookName:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->viewNote()V

    .line 78
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->initLocationDisplay()V

    goto :goto_0
.end method

.method public moveNotebook(ILzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 5
    .parameter "which"
    .parameter "data"

    .prologue
    .line 284
    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->notebookName:Ljava/lang/String;

    .line 285
    iget v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->noteId:I

    .line 287
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->notebookName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->notebookName:Ljava/lang/String;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->notebookName:Ljava/lang/String;

    .line 291
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 292
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "notebook"

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->notebookName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    .line 295
    .local v0, notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->noteId:I

    invoke-virtual {v0, v2, v1}, Lzte/com/cn/cloudnotepad/data/NotesData;->updateNoteData(ILandroid/content/ContentValues;)V

    .line 296
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v0, v2, v3}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 298
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget v2, v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    sget-object v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 299
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget v2, v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->noteId:I

    invoke-virtual {v0, v4}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(I)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v0           #notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
