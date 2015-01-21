.class public Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;
.super Landroid/app/Activity;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/app/ActionBar$OnNavigationListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;,
        Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;
    }
.end annotation


# static fields
.field private static final CAMERA_TEMP_NAME:Ljava/lang/String; = "camera_temp.jpg"

.field private static final MAX_RESOURCES_IN_NOTE:I = 0xa

.field private static final NOTE_CONTENT_EDITTEXT_MAX_LENGHT:I = 0x1388

#the value of this static final field might be set in the static constructor
.field private static final NOTE_OBJECT_Y_OFFSET:I = 0x0

.field private static final START_CAMERA_RESULT:I = 0x1

.field private static final START_GALLERY_RESULT:I = 0x3

.field private static final START_LOCATION_RESULT:I = 0x64

.field private static final START_RESOURCE_RESULT:I = 0x4

.field private static final START_VIDEO_RESULT:I = 0x2

.field private static final START_WALLPAPER_PICK_RESULT:I = 0x6

.field private static final START_WALLPAPER_SET_RESULT:I = 0x5

.field private static final STATE_EDIT:I = 0x1

.field private static final STATE_NEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CreateNewNoteActivity"

.field private static final TITLE_CHAR_COUNT:I = 0x24

.field private static final VIBRATOR_TIME:I = 0x96

.field private static final VIDEO_TEMP_NAME:Ljava/lang/String; = "video_temp.mp4"

.field private static final WALLPAPER_TEMP_NAME:Ljava/lang/String; = "wallpaper_temp.jpg"


# instance fields
.field private addressString:Ljava/lang/String;

.field private cancelActionView:Landroid/view/View;

.field private editDoodleIndex:I

.field private isActionMoved:Z

.field private locationMapFileName:Ljava/lang/String;

.field public mActionBarListener:Landroid/view/View$OnClickListener;

.field public mAddResourceFileNameList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraButton:Landroid/widget/ImageButton;

.field public mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

.field private mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

.field private mCurPlayRecord:I

.field private mCurrentFocusStatus:[I

.field public mDeleteResourceFileNameList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDoodleButton:Landroid/widget/ImageButton;

.field private mEditTextAttributeSet:Landroid/util/AttributeSet;

.field private mGalleryButton:Landroid/widget/ImageButton;

.field mHandler:Landroid/os/Handler;

.field private mHandwriteButton:Landroid/widget/ImageButton;

.field private mInsertButton:Landroid/widget/ImageButton;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocationButton:Landroid/widget/ImageButton;

.field private mLocationImageView:Landroid/widget/ImageView;

.field private mLocationRelativeLayout:Landroid/widget/RelativeLayout;

.field private mLocationTextView:Landroid/widget/TextView;

.field private mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

.field private mNotebookItemPos:I

.field private mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

.field private mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

.field private mOnSoundRecorderListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;

.field private mPreY:F

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

.field public mResourceFileNameList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mResourceLayout:Landroid/widget/LinearLayout;

.field mSaveRunnable:Ljava/lang/Runnable;

.field private mScrollView:Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;

.field private mSharedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedIntentFilter:Landroid/content/IntentFilter;

.field private mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

.field private mState:I

.field private mTitleEditText:Landroid/widget/EditText;

.field private mTitleLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

.field private mTouchSlop:I

.field private mWallpaperDialog:Landroid/app/AlertDialog;

.field private mYDistance:F

.field private noteId:I

.field private notebookName:Ljava/lang/String;

.field private notesData:Lzte/com/cn/cloudnotepad/data/NotesData;

.field private saveActionView:Landroid/view/View;

.field private tempFile:Ljava/io/File;

.field private voiceFileNum:I

.field public wPFileName:[Ljava/lang/String;

.field public wallpaper:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->NOTE_OBJECT_Y_OFFSET:I

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    .line 141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDeleteResourceFileNameList:Ljava/util/LinkedList;

    .line 143
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    .line 153
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    .line 157
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->locationMapFileName:Ljava/lang/String;

    .line 161
    const-string v0, "2"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    .line 162
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wPFileName:[Ljava/lang/String;

    .line 165
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    .line 171
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isActionMoved:Z

    .line 176
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 181
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->voiceFileNum:I

    .line 183
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurPlayRecord:I

    .line 185
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    .line 186
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 189
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mEditTextAttributeSet:Landroid/util/AttributeSet;

    .line 217
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    .line 243
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$2;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mOnSoundRecorderListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;

    .line 474
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$3;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$3;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 2628
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$4;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$4;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSharedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2642
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    invoke-direct {v0, p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;-><init>(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 215
    return-void
.end method

.method private CreateBackAlertDlg()V
    .locals 3

    .prologue
    .line 1612
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1613
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1614
    const v1, 0x1040013

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$18;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$18;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1625
    const v1, 0x1040009

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$19;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$19;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1632
    return-void
.end method

.method private CreateDeleteObjectAlertDlg(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;II)V
    .locals 3
    .parameter "controlData"
    .parameter "index"
    .parameter "titleId"

    .prologue
    .line 944
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 945
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 946
    const v1, 0x104000a

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;

    invoke-direct {v2, p0, p2, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 961
    const/high16 v1, 0x104

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$16;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$16;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 966
    return-void
.end method

.method private InitalActionBar()V
    .locals 5

    .prologue
    .line 455
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    .line 456
    const/16 v3, 0x1e

    .line 455
    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 459
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030006

    .line 460
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 459
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, actionBarButtons:Landroid/view/View;
    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->cancelActionView:Landroid/view/View;

    .line 462
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->cancelActionView:Landroid/view/View;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveActionView:Landroid/view/View;

    .line 464
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveActionView:Landroid/view/View;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 467
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2204
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->editPictureFile(Ljava/lang/String;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2181
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addDoodleWriteFile(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$10(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1961
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveFile(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$11(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    return-object v0
.end method

.method static synthetic access$12(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mPreY:F

    return-void
.end method

.method static synthetic access$13(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mYDistance:F

    return-void
.end method

.method static synthetic access$14(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-boolean p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isActionMoved:Z

    return-void
.end method

.method static synthetic access$15(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mYDistance:F

    return v0
.end method

.method static synthetic access$16(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 173
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mPreY:F

    return v0
.end method

.method static synthetic access$17(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 172
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$18(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isActionMoved:Z

    return v0
.end method

.method static synthetic access$19(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->enableLastEditText()V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2075
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addRecordFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2613
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->playAudio()V

    return-void
.end method

.method static synthetic access$21(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurPlayRecord:I

    return v0
.end method

.method static synthetic access$22(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurPlayRecord:I

    return-void
.end method

.method static synthetic access$23(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 968
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->onObjectClick(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    return-void
.end method

.method static synthetic access$24(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->locationMapFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->updateLocationDisplay()V

    return-void
.end method

.method static synthetic access$27(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1200
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->deleteObject(ILzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    return-void
.end method

.method static synthetic access$28(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1241
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveEditText(I)V

    return-void
.end method

.method static synthetic access$29(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->editDoodleIndex:I

    return-void
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->onActionBarItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$30(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    return-object v0
.end method

.method static synthetic access$31(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1169
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->adjustScrollBarByImageView(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V

    return-void
.end method

.method static synthetic access$32(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$33(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->CreateDeleteObjectAlertDlg(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;II)V

    return-void
.end method

.method static synthetic access$34(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1852
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startVideo()V

    return-void
.end method

.method static synthetic access$35(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1902
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startResource()V

    return-void
.end method

.method static synthetic access$36(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2350
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveEditTextAfterInsertObject()V

    return-void
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    return-object v0
.end method

.method static synthetic access$5(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2582
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setProgressDialog(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$6(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1332
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveNote()V

    return-void
.end method

.method static synthetic access$7(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    return v0
.end method

.method static synthetic access$8(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/data/ResourceData;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    return-object v0
.end method

.method static synthetic access$9(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private addCameraFile(Landroid/content/Intent;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 2103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "camera_temp.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2104
    .local v3, filePathString:Ljava/lang/String;
    const-string v5, "CreateNewNoteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "filePathString="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const-string v5, ".jpg"

    invoke-static {v3, v5}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2107
    .local v2, fileNameString:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createThumbnailFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2114
    .local v0, cameraFile:Ljava/io/File;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v0, v2, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v4

    .line 2116
    .local v4, sizeString:Ljava/lang/String;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    if-eqz v5, :cond_0

    .line 2117
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2119
    :cond_0
    const-string v5, "picture"

    const-string v6, ""

    .line 2120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 2119
    invoke-static {v5, v2, v6, v4, v7}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v1

    .line 2121
    .local v1, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    const/4 v5, 0x0

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-direct {p0, v1, v5, v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveAddObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    .line 2122
    return-void
.end method

.method private addDoodleWriteFile(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "type"
    .parameter "meta"
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    .line 2182
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v5

    const/16 v6, 0x14

    if-lt v5, v6, :cond_1

    .line 2183
    const v5, 0x7f090096

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2202
    :cond_0
    :goto_0
    return-void

    .line 2186
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "temp.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 2187
    .local v4, tempFile:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "temp.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    invoke-static {v5, v6}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2189
    .local v2, fileNameString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createThumbnailFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2191
    .local v1, doodleFile:Ljava/io/File;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v1, v2, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    .line 2192
    .local v3, sizeString:Ljava/lang/String;
    const-string v5, ""

    .line 2193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 2192
    invoke-static {p1, v2, v5, v3, v6}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 2194
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v5, v5, v8

    invoke-direct {p0, v0, p2, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveAddObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    .line 2195
    if-eqz v4, :cond_2

    .line 2196
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2198
    :cond_2
    if-eqz p3, :cond_0

    .line 2199
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2200
    const/4 p3, 0x0

    goto :goto_0
.end method

.method private addGalleryFile(Landroid/net/Uri;)V
    .locals 9
    .parameter "uri"

    .prologue
    .line 2147
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2148
    .local v2, filePathString:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 2149
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    .line 2151
    :cond_0
    const-string v5, "CreateNewNoteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "filePathString="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const/4 v1, 0x0

    .line 2154
    .local v1, fileNameString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2155
    .local v3, galleryFile:Ljava/io/File;
    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2156
    const-string v5, ".jpg"

    invoke-static {v2, v5}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2157
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createThumbnailFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 2159
    :cond_1
    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2160
    if-eqz v3, :cond_2

    if-nez v1, :cond_4

    .line 2161
    :cond_2
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_3

    .line 2162
    new-instance v5, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$24;

    invoke-direct {v5, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$24;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 2167
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2179
    :goto_0
    return-void

    .line 2169
    :cond_3
    const-string v5, "CreateNewNoteActivity"

    const-string v6, "mHandler = null in addGalleryFile"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2175
    :cond_4
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v3, v1, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v4

    .line 2176
    .local v4, sizeString:Ljava/lang/String;
    const-string v5, "picture"

    const-string v6, ""

    .line 2177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 2176
    invoke-static {v5, v1, v6, v4, v7}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 2178
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    const/4 v5, 0x0

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-direct {p0, v0, v5, v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveAddObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private addImage(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V
    .locals 8
    .parameter "controlData"
    .parameter "meta"
    .parameter "pos"

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 801
    const-string v3, "video"

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 806
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_2

    .line 807
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 808
    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$11;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$11;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 813
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 817
    :goto_1
    const-string v3, "CreateNewNoteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "no available icon for file : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :goto_2
    return-void

    .line 804
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 815
    :cond_1
    const v3, 0x7f090095

    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 821
    :cond_2
    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;-><init>(Landroid/content/Context;)V

    .line 822
    .local v1, image:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setImageType(I)V

    .line 823
    invoke-virtual {v1, p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setControlData(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    .line 824
    invoke-virtual {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 825
    if-eqz p2, :cond_3

    .line 826
    invoke-virtual {v1, p2}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setContentMeta(Ljava/lang/Object;)V

    .line 829
    :cond_3
    const-string v3, "CreateNewNoteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "image.getWidth()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 832
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 833
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 834
    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-direct {p0, p1, v1, v3, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addResource(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/view/View;II)V

    goto :goto_2
.end method

.method private addLocationInfo(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 2032
    const-string v1, "MapParam"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    .line 2033
    const-string v1, "CreateNewNoteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2035
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2036
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$22;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$22;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 2041
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2073
    :goto_0
    return-void

    .line 2043
    :cond_0
    const-string v1, "CreateNewNoteActivity"

    const-string v2, "mHandler = null in addLocationInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2049
    :cond_1
    const-string v1, "MapScreenshot"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2050
    .local v0, mapScreenshotFile:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2051
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->saveLocationMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->locationMapFileName:Ljava/lang/String;

    .line 2062
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 2063
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$23;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$23;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 2068
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2070
    :cond_3
    const-string v1, "CreateNewNoteActivity"

    const-string v2, "mHandler = null in addLocationInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V
    .locals 2
    .parameter "controlData"
    .parameter "meta"
    .parameter "pos"

    .prologue
    .line 707
    const-string v0, "text"

    iget-object v1, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 709
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;

    invoke-direct {v0, p0, p1, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 714
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-virtual {p0, p0, p1, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addEditText(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)Landroid/widget/EditText;

    goto :goto_0

    .line 719
    :cond_1
    const-string v0, "picture"

    iget-object v1, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "doodle"

    iget-object v1, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 720
    const-string v0, "handwrite"

    iget-object v1, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "video"

    iget-object v1, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addImage(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    goto :goto_0

    .line 722
    :cond_3
    const-string v0, "record"

    iget-object v1, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    invoke-direct {p0, p1, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addRecord(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    goto :goto_0

    .line 726
    :cond_4
    invoke-direct {p0, p1, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addOther(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    goto :goto_0
.end method

.method private addOther(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V
    .locals 5
    .parameter "controlData"
    .parameter "pos"

    .prologue
    .line 847
    .line 848
    const/4 v1, 0x0

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 849
    iget-object v2, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    iget-object v3, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    .line 847
    invoke-static {p0, v1, v2, v3, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->displayOtherAttachment(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 850
    .local v0, otherLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sget v2, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addResource(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/view/View;II)V

    .line 851
    return-void
.end method

.method private addRecord(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V
    .locals 7
    .parameter "controlData"
    .parameter "pos"

    .prologue
    .line 840
    .line 841
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "record"

    invoke-static {p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 842
    iget-object v2, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    iget-object v3, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    .line 840
    invoke-static {p0, v1, v2, v3, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->displayRecordAttachment(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 843
    .local v0, recordLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sget v2, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addResource(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/view/View;II)V

    .line 844
    return-void
.end method

.method private addRecordFile(Ljava/lang/String;)V
    .locals 11
    .parameter "timeString"

    .prologue
    const/4 v10, 0x0

    .line 2076
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v6

    const/16 v7, 0x14

    if-lt v6, v7, :cond_0

    .line 2077
    const v6, 0x7f090096

    invoke-virtual {p0, v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2091
    :goto_0
    return-void

    .line 2080
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getRecordFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".m4a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2081
    .local v3, oriName:Ljava/lang/String;
    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->voiceFileNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->voiceFileNum:I

    .line 2083
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "temp_record.m4a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".m4a"

    invoke-static {v6, v7}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2084
    .local v1, fileNameString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "temp_record.m4a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileData(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 2086
    .local v2, inputStream:Ljava/io/FileInputStream;
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->copyFileData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 2087
    .local v4, recordFile:Ljava/io/File;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v4, v1, v6, v7}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v5

    .line 2088
    .local v5, sizeString:Ljava/lang/String;
    const-string v6, "record"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 2088
    invoke-static {v6, v1, v3, v7, v8}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 2090
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    const/4 v6, 0x0

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v7, v7, v10

    invoke-direct {p0, v0, v6, v7}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveAddObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method private addResource(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/view/View;II)V
    .locals 3
    .parameter "controlData"
    .parameter "view"
    .parameter "viewWidth"
    .parameter "pos"

    .prologue
    .line 871
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$13;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$13;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 899
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 900
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;

    invoke-direct {v1, p0, p2, p4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/view/View;I)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 910
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    :goto_0
    return-void

    .line 913
    :cond_0
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CreateNewNoteActivity"

    const-string v2, "addResource addView Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    goto :goto_0
.end method

.method private addResourceFile(Landroid/content/Intent;)V
    .locals 21
    .parameter "data"

    .prologue
    .line 2232
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 2233
    .local v5, extras:Landroid/os/Bundle;
    const-string v17, "fileName"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2234
    .local v7, fileName:Ljava/lang/String;
    const-string v17, "currentDir"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2235
    .local v4, currentDir:Ljava/lang/String;
    const-string v17, "CreateNewNoteActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "fileName="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", currentDir="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 2237
    .local v12, index:I
    const-string v11, ""

    .line 2238
    .local v11, filemime:Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_0

    .line 2239
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2245
    :cond_0
    const-string v8, ""

    .line 2246
    .local v8, fileNameString:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2247
    .local v6, file:Ljava/io/File;
    invoke-static {v6}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v9

    .line 2248
    .local v9, fileSize:J
    const-wide/32 v17, 0x3200000

    cmp-long v17, v9, v17

    if-gtz v17, :cond_1

    .line 2249
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalStoreageSize()J

    move-result-wide v17

    sub-long v17, v17, v9

    const-wide/32 v19, 0x1e00000

    cmp-long v17, v17, v19

    if-gez v17, :cond_3

    .line 2250
    :cond_1
    const/4 v8, 0x0

    .line 2251
    const-string v17, "CreateNewNoteActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "add resource file failed , file too large : fileName = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", fileSize = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :goto_0
    if-nez v8, :cond_5

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2257
    new-instance v17, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$25;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$25;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2308
    :cond_2
    :goto_1
    return-void

    .line 2253
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 2264
    :cond_4
    const-string v17, "CreateNewNoteActivity"

    const-string v18, "mHandler = null in addResourceFile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2273
    :cond_5
    invoke-static {v8}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->isPicture(Ljava/lang/String;)Z

    move-result v14

    .line 2274
    .local v14, isPicture:Z
    if-eqz v14, :cond_6

    .line 2275
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createThumbnailFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 2276
    .local v15, resourceFile:Ljava/io/File;
    if-nez v15, :cond_7

    .line 2277
    const/4 v14, 0x0

    .line 2300
    .end local v15           #resourceFile:Ljava/io/File;
    :cond_6
    :goto_2
    if-nez v14, :cond_2

    .line 2301
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileData(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v13

    .line 2302
    .local v13, inputStream:Ljava/io/FileInputStream;
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v13, v0, v8}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->copyFileData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 2303
    .restart local v15       #resourceFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v8, v0, v1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v16

    .line 2304
    .local v16, sizeString:Ljava/lang/String;
    const-string v17, "other"

    .line 2305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 2304
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v8, v7, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    .line 2306
    .local v3, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveAddObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 2279
    .end local v3           #controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    .end local v13           #inputStream:Ljava/io/FileInputStream;
    .end local v16           #sizeString:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v8, v0, v1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v16

    .line 2280
    .restart local v16       #sizeString:Ljava/lang/String;
    const-string v17, "picture"

    .line 2281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 2280
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v8, v7, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    .line 2282
    .restart local v3       #controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveAddObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    goto/16 :goto_2
.end method

.method private addVideoFile(Landroid/content/Intent;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    .line 2125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "video_temp.mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2126
    .local v2, filePathString:Ljava/lang/String;
    const-string v7, "CreateNewNoteActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "filePathString="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    const-string v7, ".mp4"

    invoke-static {v2, v7}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2129
    .local v1, fileNameString:Ljava/lang/String;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileData(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 2130
    .local v3, inputStream:Ljava/io/FileInputStream;
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->copyFileData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 2131
    .local v6, videoFile:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2134
    .local v5, thumbnailNameString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v5}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getVideoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v6, v1, v7, v8}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v4

    .line 2136
    .local v4, sizeString:Ljava/lang/String;
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2138
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    if-eqz v7, :cond_0

    .line 2139
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2141
    :cond_0
    const-string v7, "video"

    .line 2142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 2141
    invoke-static {v7, v1, v5, v4, v8}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 2143
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    const/4 v7, 0x0

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v8, v8, v10

    invoke-direct {p0, v0, v7, v8}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveAddObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    .line 2144
    return-void
.end method

.method private adjustScrollBarByImageView(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 1171
    const-string v11, "CreateNewNoteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "view top = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getTop()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", left = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getLeft()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const-string v11, "CreateNewNoteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "title height = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v11, "CreateNewNoteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ActionBar height = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActionBar;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v11, "CreateNewNoteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "scroll offset = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mScrollView:Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;

    invoke-virtual {v13}, Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;->getScrollY()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const-string v11, "CreateNewNoteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "toolbar height = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v13}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getToolBarHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getHeight()I

    move-result v8

    .line 1177
    .local v8, viewHeight:I
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 1178
    .local v0, actionBarHeight:I
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v11}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getToolBarHeight()I

    move-result v6

    .line 1179
    .local v6, toolBarHeight:I
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mScrollView:Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;

    invoke-virtual {v11}, Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;->getScrollY()I

    move-result v4

    .line 1180
    .local v4, scrollOffset:I
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getHeight()I

    move-result v5

    .line 1181
    .local v5, titleHeight:I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1182
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1183
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1184
    .local v7, totalHeight:I
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v11}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getDefaultMaxViewHeight()I

    move-result v2

    .line 1185
    .local v2, doodleHeight:I
    if-ge v8, v2, :cond_0

    .line 1186
    move v2, v8

    .line 1189
    :cond_0
    const-string v11, "CreateNewNoteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "total Height = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v11, "CreateNewNoteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "doodle Height = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    sub-int v11, v7, v6

    sub-int v3, v11, v2

    .line 1192
    .local v3, doodleTop:I
    add-int v11, v0, v5

    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getTop()I

    move-result v12

    add-int/2addr v11, v12

    sub-int v9, v11, v4

    .line 1193
    .local v9, viewTop:I
    sub-int v10, v9, v3

    .line 1194
    .local v10, yOffset:I
    const-string v11, "CreateNewNoteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "scroll new offset = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mScrollView:Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;->scrollBy(II)V

    .line 1198
    return-void
.end method

.method private clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1291
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->clearListData()V

    .line 1292
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1293
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 1294
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    .line 1295
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mScrollView:Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;

    .line 1296
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    .line 1297
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    .line 1298
    return-void
.end method

.method private clearListData()V
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1286
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1287
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDeleteResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1288
    return-void
.end method

.method private createInsertListPopupWindow()V
    .locals 5

    .prologue
    .line 1729
    new-instance v2, Landroid/widget/ListPopupWindow;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1730
    .local v2, insertListPopup:Landroid/widget/ListPopupWindow;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mInsertButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1734
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, insertItems:[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 1736
    const v3, 0x1090009

    .line 1735
    invoke-direct {v1, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1737
    .local v1, insertListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1738
    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$20;

    invoke-direct {v3, p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$20;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1773
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1774
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1775
    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 1776
    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    .line 1777
    return-void
.end method

.method private createObjectPopupWindow(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 13
    .parameter "view"
    .parameter "controlData"

    .prologue
    .line 1032
    new-instance v6, Landroid/widget/ListPopupWindow;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v10}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1033
    .local v6, objectListPopup:Landroid/widget/ListPopupWindow;
    invoke-virtual {v6, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1034
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 1035
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090038

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    .line 1036
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 1037
    .local v3, items:[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 1038
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090038

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    const/4 v10, 0x1

    .line 1039
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090043

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    const/4 v10, 0x2

    .line 1040
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1041
    .local v2, PictureItems:[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 1042
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    const/4 v10, 0x1

    .line 1043
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090038

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    const/4 v10, 0x2

    .line 1044
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 1045
    .local v0, AttachmentItems:[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 1046
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 1048
    .local v1, LocationItems:[Ljava/lang/String;
    iget-object v10, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v10, :cond_2

    .line 1049
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 1050
    const v10, 0x1090009

    .line 1049
    invoke-direct {v5, p0, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1063
    .local v5, objectListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1064
    new-instance v10, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;

    invoke-direct {v10, p0, p1, p2, v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v6, v10}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1127
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1129
    .local v9, width:I
    const/4 v10, 0x2

    new-array v4, v10, [I

    .line 1130
    .local v4, location:[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1131
    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int v8, v10, v11

    .line 1132
    .local v8, viewBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 1133
    .local v7, verticalOffset:I
    sub-int v10, v8, v7

    sget v11, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->NOTE_OBJECT_Y_OFFSET:I

    if-le v10, v11, :cond_0

    .line 1134
    sub-int v10, v8, v7

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v11

    invoke-virtual {v11}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v11

    sget v12, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->NOTE_OBJECT_Y_OFFSET:I

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_1

    .line 1135
    :cond_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v10

    invoke-virtual {v10}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v7, v8, v10

    .line 1136
    const-string v10, "CreateNewNoteActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "re location="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v12, v8, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_1
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1140
    invoke-virtual {v6, v9}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1141
    const/4 v10, -0x2

    invoke-virtual {v6, v10}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 1142
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v10}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 1143
    rsub-int/lit8 v10, v7, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1144
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->show()V

    .line 1145
    return-void

    .line 1051
    .end local v4           #location:[I
    .end local v5           #objectListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v7           #verticalOffset:I
    .end local v8           #viewBottom:I
    .end local v9           #width:I
    :cond_2
    const-string v10, "doodle"

    iget-object v11, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1052
    const-string v10, "picture"

    iget-object v11, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1053
    :cond_3
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 1054
    const v10, 0x1090009

    .line 1053
    invoke-direct {v5, p0, v10, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .restart local v5       #objectListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 1055
    .end local v5           #objectListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_4
    const-string v10, "record"

    iget-object v11, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1056
    const-string v10, "other"

    iget-object v11, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1057
    :cond_5
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 1058
    const v10, 0x1090009

    .line 1057
    invoke-direct {v5, p0, v10, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .restart local v5       #objectListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 1060
    .end local v5           #objectListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_6
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 1061
    const v10, 0x1090009

    .line 1060
    invoke-direct {v5, p0, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .restart local v5       #objectListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto/16 :goto_0
.end method

.method private deleteObject(ILzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 5
    .parameter "pos"
    .parameter "controlData"

    .prologue
    const/4 v4, 0x0

    .line 1202
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v1, p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->deleteControl(I)V

    .line 1203
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDeleteResourceFileNameList:Ljava/util/LinkedList;

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1204
    const-string v1, "video"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDeleteResourceFileNameList:Ljava/util/LinkedList;

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1208
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1215
    :goto_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v1, v1, v4

    if-lt v1, p1, :cond_1

    .line 1216
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x2

    aput v2, v1, v4

    .line 1226
    :cond_1
    const-string v1, "CreateNewNoteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCurrentFocusStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const-string v1, "CreateNewNoteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mResourceFileNameList="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void

    .line 1209
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1210
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1208
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private deleteResourceData()V
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/data/ResourceData;->deleteResourceDataByNoteId(I)V

    goto :goto_0
.end method

.method private drawWallPaper(Landroid/graphics/Canvas;I)V
    .locals 7
    .parameter "canvas"
    .parameter "contentWidth"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2473
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getActionBarHeight()I

    move-result v3

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getFrameHeight()I

    move-result v4

    add-int v1, v3, v4

    .line 2474
    .local v1, cutHeight:I
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    invoke-static {p0, v3}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->setWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2475
    .local v2, wall:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 2484
    :goto_0
    return-void

    .line 2478
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 2479
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 2478
    invoke-direct {v0, v6, v6, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2480
    .local v0, bounds:Landroid/graphics/Rect;
    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2481
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2482
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2483
    int-to-float v3, v1

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private editPictureFile(Ljava/lang/String;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "type"
    .parameter "myImageView"
    .parameter "bitmap"

    .prologue
    .line 2205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "temp.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 2206
    .local v4, tempFile:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "temp.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-static {v5, v6}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2207
    .local v2, fileNameString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createThumbnailFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2214
    .local v1, doodleFile:Ljava/io/File;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v1, v2, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    .line 2215
    .local v3, sizeString:Ljava/lang/String;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDeleteResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getControlData()Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v6

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2216
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getControlData()Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v7

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getControlData()Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v7

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2218
    const-string v5, ""

    .line 2219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 2218
    invoke-static {p1, v2, v5, v3, v6}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 2220
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    invoke-virtual {p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setControlData(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    .line 2221
    invoke-direct {p0, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveEditObject(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V

    .line 2222
    if-eqz v4, :cond_0

    .line 2223
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2225
    :cond_0
    if-eqz p3, :cond_1

    .line 2226
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2227
    const/4 p3, 0x0

    .line 2229
    :cond_1
    return-void
.end method

.method private enableLastEditText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 678
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v3

    .line 685
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 686
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 687
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v1, v1, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->setViewFocusState(Landroid/content/Context;ILjava/lang/Boolean;Z)V

    .line 689
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method private getActionBarHeight()I
    .locals 2

    .prologue
    .line 2468
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2469
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    return v1
.end method

.method private getEditTextAttributeSet()Landroid/util/AttributeSet;
    .locals 9

    .prologue
    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, editTextAttributeSet:Landroid/util/AttributeSet;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "new_note_edittext"

    const-string v7, "layout"

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 657
    .local v3, res:I
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 658
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 661
    .local v4, state:I
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 665
    :goto_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 666
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EditText"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 667
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 673
    :goto_1
    return-object v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e1:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 671
    .end local v0           #e1:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1
.end method

.method private getFrameHeight()I
    .locals 2

    .prologue
    .line 2458
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2460
    .local v0, frame:Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2464
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    return v1

    .line 2461
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getNoteContentThumbnailHeight()I
    .locals 11

    .prologue
    .line 2439
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2440
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v9, "ContentThumbnailHeight"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2441
    .local v4, thumbnailHeight:I
    if-lez v4, :cond_0

    move v5, v4

    .line 2454
    .end local v4           #thumbnailHeight:I
    .local v5, thumbnailHeight:I
    :goto_0
    return v5

    .line 2445
    .end local v5           #thumbnailHeight:I
    .restart local v4       #thumbnailHeight:I
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 2446
    .local v8, windowHeight:I
    const v9, 0x7f06001d

    invoke-virtual {p0, v9}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2447
    .local v6, tools:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 2448
    .local v7, toolsHeight:I
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getFrameHeight()I

    move-result v3

    .line 2449
    .local v3, statusBarHeight:I
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getActionBarHeight()I

    move-result v0

    .line 2450
    .local v0, actionBarHeight:I
    sub-int v9, v8, v3

    sub-int/2addr v9, v0

    sub-int v4, v9, v7

    .line 2451
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2452
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "ContentThumbnailHeight"

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2453
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v4

    .line 2454
    .end local v4           #thumbnailHeight:I
    .restart local v5       #thumbnailHeight:I
    goto :goto_0
.end method

.method private getNoteTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1521
    const-string v0, ""

    .line 1522
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1525
    :cond_0
    return-object v0
.end method

.method private getNotesDataByContentValues(Landroid/content/ContentValues;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 1388
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;-><init>()V

    .line 1389
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 1390
    const-string v2, "content"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    .line 1391
    const-string v2, "notebook"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    .line 1392
    const-string v2, "drawable_src"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    .line 1393
    const-string v2, "longitude"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1394
    .local v1, obj:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    iput v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->longitude:I

    .line 1395
    const-string v2, "latitude"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1396
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_0
    iput v3, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->latitude:I

    .line 1397
    const-string v2, "address"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    .line 1398
    const-string v2, "map"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 1399
    const-string v2, "wallpaper"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 1400
    const-string v2, "size"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    .line 1401
    const-string v2, "content_hash"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 1402
    const-string v2, "uuid"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 1403
    return-object v0

    :cond_1
    move v2, v3

    .line 1394
    goto :goto_0
.end method

.method private getRecordFileNum(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;)I
    .locals 4
    .parameter "controlsUtils"

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 423
    return v1

    .line 419
    :cond_0
    invoke-virtual {p1, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v2

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v3, "record"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    add-int/lit8 v1, v1, 0x1

    .line 418
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftKeyBoard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1895
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1896
    .local v0, manager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1897
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1900
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 352
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    .line 353
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    const/4 v2, -0x1

    aput v2, v1, v4

    .line 356
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->voiceFileNum:I

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    .line 362
    const-string v1, "1"

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    .line 364
    new-instance v1, Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/data/NotebookData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    .line 365
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 366
    new-instance v1, Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/data/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    .line 367
    new-instance v1, Lzte/com/cn/cloudnotepad/data/ResourceData;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/data/ResourceData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    .line 368
    new-instance v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    .line 370
    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 371
    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notebookName:Ljava/lang/String;

    .line 386
    :goto_0
    return-void

    .line 373
    :cond_0
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 375
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;-><init>()V

    .line 376
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    iput v4, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    .line 377
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    .line 378
    iput v3, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    .line 380
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v1, v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->insertNoteBookData(Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V

    .line 383
    .end local v0           #data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    :cond_1
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notebookName:Ljava/lang/String;

    goto :goto_0
.end method

.method private initNote(I)V
    .locals 3
    .parameter "noteId"

    .prologue
    .line 390
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-virtual {v1, p1}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(I)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 391
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    if-nez v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 397
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getRecordFileNum(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;)I

    move-result v1

    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->voiceFileNum:I

    .line 401
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notebookName:Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    .line 406
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    .line 410
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->locationMapFileName:Ljava/lang/String;

    .line 412
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v0, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    .line 413
    .local v0, drawableSrc:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->resolveResourceString(Ljava/lang/String;Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method private initObjectDisplay()V
    .locals 4

    .prologue
    .line 693
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v0

    .line 694
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 697
    return-void

    .line 695
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v2, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 572
    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mRecordButton:Landroid/widget/ImageButton;

    .line 573
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    const v2, 0x7f06001f

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCameraButton:Landroid/widget/ImageButton;

    .line 576
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mGalleryButton:Landroid/widget/ImageButton;

    .line 582
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mGalleryButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    const v2, 0x7f060022

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandwriteButton:Landroid/widget/ImageButton;

    .line 585
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandwriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    const v2, 0x7f060021

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDoodleButton:Landroid/widget/ImageButton;

    .line 588
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDoodleButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    const v2, 0x7f060023

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationButton:Landroid/widget/ImageButton;

    .line 591
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mInsertButton:Landroid/widget/ImageButton;

    .line 594
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mInsertButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    const v2, 0x7f06001b

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    .line 597
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$6;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$6;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 607
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    const/16 v3, 0x24

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-direct {v2, v3, v4}, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;-><init>(ILandroid/widget/EditText;)V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    .line 609
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 610
    .local v1, view:Landroid/view/View;
    const v2, 0x7f060071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    .line 611
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 612
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 613
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 617
    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationTextView:Landroid/widget/TextView;

    .line 618
    const v2, 0x7f060073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationImageView:Landroid/widget/ImageView;

    .line 620
    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    .line 621
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 623
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTouchSlop:I

    .line 624
    const v2, 0x7f06000c

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mScrollView:Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;

    .line 625
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mScrollView:Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/ui/widget/TouchEventScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 650
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getEditTextAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mEditTextAttributeSet:Landroid/util/AttributeSet;

    .line 651
    return-void
.end method

.method private isEmptyNote()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 528
    const-string v3, ""

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v1

    .line 532
    :cond_1
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 533
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 534
    .local v0, mEditText:Landroid/widget/EditText;
    const-string v3, ""

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 536
    goto :goto_0
.end method

.method private isEqual(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z
    .locals 4
    .parameter "oldData"
    .parameter "newData"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1408
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v0, v1

    .line 1420
    :goto_0
    return v0

    .line 1410
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    :cond_2
    move v0, v2

    .line 1411
    goto :goto_0

    .line 1413
    :cond_3
    iget-object v0, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_1
    iput-object v0, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 1414
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1415
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1416
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1417
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1418
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1419
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1420
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 1413
    :cond_4
    iget-object v0, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1414
    goto :goto_0
.end method

.method private isNoteChanged()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 543
    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    if-gtz v4, :cond_1

    :cond_0
    move v4, v5

    .line 568
    :goto_0
    return v4

    .line 546
    :cond_1
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;-><init>()V

    .line 547
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getNoteTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setNoteContent()V

    .line 549
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    .line 550
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest([B)[B

    move-result-object v4

    invoke-static {v4}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->mdByteToString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 551
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notebookName:Ljava/lang/String;

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    .line 553
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 554
    .local v2, length:I
    if-lez v2, :cond_3

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 559
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    .line 564
    .end local v1           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    .line 565
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->locationMapFileName:Ljava/lang/String;

    :goto_3
    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 566
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 567
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    iget-object v6, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-static {v4, v6}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->getNoteSize(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    .line 568
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    invoke-virtual {v4, v6}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(I)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isEqual(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    .line 557
    .restart local v1       #i:I
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 561
    .end local v1           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v4, 0x0

    iput-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    goto :goto_2

    .line 565
    :cond_4
    const-string v4, ""

    goto :goto_3

    :cond_5
    move v4, v5

    .line 568
    goto/16 :goto_0
.end method

.method private onActionBarItemSelected(I)Z
    .locals 8
    .parameter "itemId"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 524
    :goto_0
    return v3

    .line 484
    :pswitch_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughInternalStorage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 485
    const v4, 0x7f0900ad

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getEditMode()I

    move-result v0

    .line 490
    .local v0, mode:I
    if-ne v0, v5, :cond_4

    .line 491
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->onDoodleDone()V

    .line 496
    :cond_1
    :goto_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getState()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 497
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onStop()V

    .line 499
    :cond_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 502
    :cond_3
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isNoteChanged()Z

    move-result v4

    if-nez v4, :cond_5

    .line 503
    const-string v2, "CreateNewNoteActivity"

    const-string v4, "no changes when edit note"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    goto :goto_0

    .line 492
    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 493
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->onHandwriteDone()V

    goto :goto_1

    .line 507
    :cond_5
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isEmptyNote()Z

    move-result v4

    if-nez v4, :cond_6

    .line 508
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;

    invoke-direct {v1, p0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;)V

    .line 509
    .local v1, task:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 511
    .end local v1           #task:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;
    :cond_6
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    if-nez v7, :cond_7

    move v2, v3

    :cond_7
    invoke-static {p0, v4, v5, v6, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateEmptyAlertDlg(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;Z)V

    goto/16 :goto_0

    .line 516
    .end local v0           #mode:I
    :pswitch_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getState()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 517
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onCancel()V

    .line 519
    :cond_8
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v2, v4, v5}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteFiles(ILzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;)V

    .line 520
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    goto/16 :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x7f060025
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onObjectClick(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 1
    .parameter "view"
    .parameter "controlData"

    .prologue
    .line 970
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->hideSoftKeyBoard()V

    .line 975
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 978
    :cond_0
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->createObjectPopupWindow(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    .line 980
    return-void
.end method

.method private onObjectTouch(Landroid/view/View;F)V
    .locals 8
    .parameter "view"
    .parameter "x"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 922
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 923
    .local v0, index:I
    const-string v5, "CreateNewNoteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "click resource index : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aput v0, v5, v4

    .line 926
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 927
    .local v2, screenWidth:I
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    move v1, v3

    .line 928
    .local v1, isLeft:Z
    :goto_0
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v4, v5, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0, v4, v5, v3}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->setViewFocusState(Landroid/content/Context;ILjava/lang/Boolean;Z)V

    .line 929
    return-void

    .end local v1           #isLeft:Z
    :cond_0
    move v1, v4

    .line 927
    goto :goto_0
.end method

.method private playAudio()V
    .locals 4

    .prologue
    .line 2615
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2616
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2617
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2618
    :cond_0
    const-string v2, "CreateNewNoteActivity"

    const-string v3, "RINGER_MODE_SILENT or RINGER_MODE_VIBRATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 2620
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2622
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2623
    const-string v2, "CreateNewNoteActivity"

    const-string v3, "RINGER_MODE_NORMAL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    const/4 v2, 0x7

    const/high16 v3, 0x4130

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 2626
    :cond_2
    return-void
.end method

.method private resolveAddObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V
    .locals 6
    .parameter "controlData"
    .parameter "meta"
    .parameter "pos"

    .prologue
    .line 2326
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 2327
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 2329
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 2330
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v1, p1, p3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->insertControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 2331
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    .line 2333
    const-string v1, "text"

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 2334
    .local v0, textControlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v0, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->insertControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 2335
    const/4 v1, 0x0

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    .line 2337
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 2338
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$26;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$26;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 2343
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2347
    :goto_0
    return-void

    .line 2345
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveEditTextAfterInsertObject()V

    goto :goto_0
.end method

.method private resolveEditObject(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V
    .locals 3
    .parameter "myImageView"

    .prologue
    .line 2369
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getControlData()Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v1

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->editDoodleIndex:I

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 2371
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->editDoodleIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2372
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getControlData()Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getContentMeta()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->editDoodleIndex:I

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addImage(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V

    .line 2373
    return-void
.end method

.method private resolveEditText(I)V
    .locals 10
    .parameter "pos"

    .prologue
    const/16 v8, 0x1388

    const/4 v9, 0x0

    .line 1243
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v5

    if-eq v5, p1, :cond_0

    if-nez p1, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    const-string v5, "text"

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v6

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1248
    const-string v5, "text"

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v6, p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v6

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1250
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1251
    .local v2, mEditText1:Landroid/widget/EditText;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1253
    .local v3, mEditText2:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, content:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_3

    .line 1259
    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1262
    :cond_3
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v5, v5, v9

    add-int/lit8 v6, p1, -0x1

    if-ne v5, v6, :cond_4

    .line 1264
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1265
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    move-object v1, v3

    .line 1272
    .local v1, mEditText:Landroid/widget/EditText;
    :goto_1
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 1273
    const-string v5, "text"

    .line 1274
    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 1273
    invoke-static {v5, v0, v6, v7, v8}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    .line 1275
    .local v4, textControlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v4, v6}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 1278
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5, p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->deleteControl(I)V

    .line 1279
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v5, v5, v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v5, v6, v7}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->setViewFocusState(Landroid/content/Context;ILjava/lang/Boolean;Z)V

    .line 1280
    const-string v5, "CreateNewNoteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1268
    .end local v1           #mEditText:Landroid/widget/EditText;
    .end local v4           #textControlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :cond_4
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1269
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    move-object v1, v2

    .restart local v1       #mEditText:Landroid/widget/EditText;
    goto :goto_1
.end method

.method private resolveEditTextAfterInsertObject()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2351
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v4, v4, v7

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2352
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v7

    .line 2365
    :goto_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v4, v4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->setViewFocusState(Landroid/content/Context;ILjava/lang/Boolean;Z)V

    .line 2366
    return-void

    .line 2354
    :cond_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x2

    aput v5, v4, v7

    .line 2356
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v5, v5, v7

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2357
    .local v2, preEditText:Landroid/widget/EditText;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2359
    .local v0, nextEditText:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    invoke-interface {v4, v7, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2360
    .local v3, preText:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2362
    .local v1, nextText:Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2363
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private saveFile(ILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "data"

    .prologue
    .line 1963
    const-string v0, "CreateNewNoteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 1965
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "START_LOCATION_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    if-eqz p2, :cond_0

    .line 1971
    invoke-direct {p0, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addLocationInfo(Landroid/content/Intent;)V

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1974
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1975
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "START_CAMERA_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    invoke-direct {p0, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addCameraFile(Landroid/content/Intent;)V

    goto :goto_0

    .line 1977
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1978
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "START_VIDEO_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-direct {p0, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addVideoFile(Landroid/content/Intent;)V

    goto :goto_0

    .line 1980
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 1981
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "START_GALLERY_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    if-eqz p2, :cond_0

    .line 1983
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addGalleryFile(Landroid/net/Uri;)V

    goto :goto_0

    .line 1985
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 1986
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "START_RESOURCE_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    if-eqz p2, :cond_0

    .line 1988
    invoke-direct {p0, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addResourceFile(Landroid/content/Intent;)V

    goto :goto_0

    .line 1990
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1991
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "START_WALLPAPER_SET_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setWallpaperFromGallery()V

    goto :goto_0
.end method

.method private saveNote()V
    .locals 6

    .prologue
    .line 1333
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1334
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getNoteTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setNoteContent()V

    .line 1336
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsString()Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, content:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const-string v3, "CreateNewNoteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const-string v3, "updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1342
    const-string v3, "notebook"

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notebookName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v3, "wallpaper"

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v3, "size"

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getNoteTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->getNoteSize(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveNoteResource(Landroid/content/ContentValues;)V

    .line 1349
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1352
    const-string v3, "address"

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v3, "map"

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->locationMapFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest([B)[B

    move-result-object v3

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->mdByteToString([B)Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, content_hash:Ljava/lang/String;
    const-string v3, "content_hash"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1367
    invoke-direct {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getNotesDataByContentValues(Landroid/content/ContentValues;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    invoke-virtual {v4, v5}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(I)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isEqual(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1369
    const-string v3, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    invoke-virtual {v3, v4, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->updateNoteData(ILandroid/content/ContentValues;)V

    .line 1383
    :cond_0
    :goto_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveNoteContentBitmap()V

    .line 1384
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveResource()V

    .line 1385
    return-void

    .line 1357
    .end local v1           #content_hash:Ljava/lang/String;
    :cond_1
    const-string v3, "address"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1358
    const-string v3, "map"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1378
    .restart local v1       #content_hash:Ljava/lang/String;
    :cond_2
    const-string v3, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v3, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1381
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-virtual {v3, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->saveNoteData(Landroid/content/ContentValues;)I

    move-result v3

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    goto :goto_1
.end method

.method private saveNoteContentBitmap()V
    .locals 20

    .prologue
    .line 2376
    invoke-virtual/range {p0 .. p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 2377
    .local v5, contentWidth:I
    invoke-direct/range {p0 .. p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getNoteContentThumbnailHeight()I

    move-result v6

    .line 2378
    .local v6, thumbnailHeight:I
    const/4 v2, 0x0

    .line 2380
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2388
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2389
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2390
    .local v9, canvas:Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 2391
    .local v17, paint:Landroid/graphics/Paint;
    const/high16 v3, -0x100

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2392
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "cover_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2394
    .local v14, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->drawWallPaper(Landroid/graphics/Canvas;I)V

    .line 2395
    const/16 v18, 0x0

    .line 2396
    .local v18, preTop:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_3

    .line 2415
    :cond_0
    const v19, 0x3ecccccd

    .line 2416
    .local v19, scale:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 2417
    .local v7, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2418
    const/4 v11, 0x0

    .line 2420
    .local v11, cover:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    :try_start_1
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 2421
    invoke-static {v11, v14}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2426
    if-eqz v11, :cond_1

    .line 2427
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 2428
    const/4 v11, 0x0

    .line 2430
    :cond_1
    if-eqz v2, :cond_2

    .line 2431
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2432
    const/4 v2, 0x0

    .line 2435
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v11           #cover:Landroid/graphics/Bitmap;
    .end local v14           #filename:Ljava/lang/String;
    .end local v16           #i:I
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #preTop:I
    .end local v19           #scale:F
    :cond_2
    :goto_1
    return-void

    .line 2381
    :catch_0
    move-exception v13

    .line 2382
    .local v13, e:Ljava/lang/OutOfMemoryError;
    if-eqz v2, :cond_2

    .line 2383
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2384
    const/4 v2, 0x0

    goto :goto_1

    .line 2397
    .end local v13           #e:Ljava/lang/OutOfMemoryError;
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    .restart local v14       #filename:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v18       #preTop:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2398
    .local v10, childView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    .line 2399
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v12

    .line 2401
    .local v12, data:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v3, v12, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v12, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2396
    .end local v12           #data:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2405
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    if-gt v3, v6, :cond_0

    .line 2408
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v15, v3, v18

    .line 2409
    .local v15, height:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    .line 2410
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v15

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2411
    invoke-virtual {v10, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2412
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 2422
    .end local v10           #childView:Landroid/view/View;
    .end local v15           #height:I
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v11       #cover:Landroid/graphics/Bitmap;
    .restart local v19       #scale:F
    :catch_1
    move-exception v13

    .line 2424
    .local v13, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "CreateNewNoteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "store cover bitmap error : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2426
    if-eqz v11, :cond_5

    .line 2427
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 2428
    const/4 v11, 0x0

    .line 2430
    :cond_5
    if-eqz v2, :cond_2

    .line 2431
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2432
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2425
    .end local v13           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 2426
    if-eqz v11, :cond_6

    .line 2427
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 2428
    const/4 v11, 0x0

    .line 2430
    :cond_6
    if-eqz v2, :cond_7

    .line 2431
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2432
    const/4 v2, 0x0

    .line 2434
    :cond_7
    throw v3
.end method

.method private saveNoteResource(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 1425
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 1428
    .local v1, length:I
    if-lez v1, :cond_1

    .line 1430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1436
    const-string v3, "drawable_src"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    .end local v0           #i:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 1432
    .restart local v0       #i:I
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1438
    .end local v0           #i:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    const-string v3, "CreateNewNoteActivity"

    const-string v4, "else="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-string v3, "drawable_src"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveResource()V
    .locals 5

    .prologue
    .line 1463
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1464
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->deleteResourceData()V

    .line 1468
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 1471
    .local v1, length:I
    if-lez v1, :cond_1

    .line 1472
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1473
    .local v2, resourceValues:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1477
    .end local v0           #i:I
    .end local v2           #resourceValues:Landroid/content/ContentValues;
    :cond_1
    return-void

    .line 1474
    .restart local v0       #i:I
    .restart local v2       #resourceValues:Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveResourceData(Landroid/content/ContentValues;Lzte/com/cn/cloudnotepad/data/ResourceData;Ljava/lang/String;)V

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private saveResourceData(Landroid/content/ContentValues;Lzte/com/cn/cloudnotepad/data/ResourceData;Ljava/lang/String;)V
    .locals 8
    .parameter "values"
    .parameter "data"
    .parameter "resource"

    .prologue
    .line 1481
    const/16 v5, 0x3c

    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 1482
    .local v4, start:I
    const/16 v5, 0x7c

    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1483
    .local v0, end:I
    invoke-virtual {p3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1484
    .local v1, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1485
    .local v3, hash:Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1486
    .local v2, fileSize:Ljava/lang/String;
    const-string v5, "CreateNewNoteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resource file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string v5, "hash"

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const-string v5, "name"

    invoke-virtual {p1, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string v5, "size"

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v5, "note_id"

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1503
    invoke-virtual {p2, p1}, Lzte/com/cn/cloudnotepad/data/ResourceData;->saveResourceData(Landroid/content/ContentValues;)V

    .line 1504
    return-void
.end method

.method private setNoteContent()V
    .locals 8

    .prologue
    .line 1529
    const-string v3, "CreateNewNoteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mControlsUtils="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 1555
    return-void

    .line 1532
    :cond_0
    const-string v3, "doodle"

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1533
    const-string v3, "picture"

    .line 1534
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    .line 1535
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v5

    iget-object v5, v5, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    .line 1536
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v6, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v6

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    .line 1537
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v7, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v7

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    .line 1533
    invoke-static {v3, v4, v5, v6, v7}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 1538
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v3, v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 1531
    .end local v0           #controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    :cond_2
    const-string v3, "handwrite"

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1540
    const-string v3, "handwrite"

    .line 1541
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v4, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    .line 1542
    const-string v5, "saved"

    .line 1543
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v6, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v6

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    .line 1544
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v7, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v7

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    .line 1540
    invoke-static {v3, v4, v5, v6, v7}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 1545
    .restart local v0       #controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v3, v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    goto :goto_1

    .line 1546
    .end local v0           #controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :cond_3
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 1547
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1550
    .local v2, mEditText:Landroid/widget/EditText;
    const-string v3, "text"

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1551
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v5

    iget-object v5, v5, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v6, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v6

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    const-string v7, ""

    .line 1550
    invoke-static {v3, v4, v5, v6, v7}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 1552
    .restart local v0       #controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v3, v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    goto :goto_1
.end method

.method private setProgressDialog(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 2583
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2584
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2585
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2587
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2588
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2589
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2590
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2592
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2596
    :goto_0
    return-void

    .line 2593
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setWallpaperFromGallery()V
    .locals 5

    .prologue
    .line 2003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "wallpaper_temp.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2004
    .local v0, filePathString:Ljava/lang/String;
    const-string v3, ".jpg"

    invoke-static {v0, v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    .line 2005
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2008
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getWallPaperStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2009
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getWallPaperStoragePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableFromFileContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2010
    .local v2, wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    .line 2011
    const v3, 0x7f0900a2

    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2012
    .local v1, toastText:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2015
    .end local v1           #toastText:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 2016
    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$21;

    invoke-direct {v3, p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$21;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 2021
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2026
    :goto_1
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 2027
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2023
    :cond_3
    const-string v3, "CreateNewNoteActivity"

    const-string v4, "mHandler = null in setWallpaperFromGallery"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startCamera()V
    .locals 5

    .prologue
    .line 1840
    const-string v3, "CreateNewNoteActivity"

    const-string v4, "startCamera"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1843
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "camera_temp.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    .line 1844
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1845
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1846
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1847
    :catch_0
    move-exception v0

    .line 1848
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CreateNewNoteActivity"

    const-string v4, "startCamera Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startDoodle()V
    .locals 2

    .prologue
    .line 1888
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "startDoodle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->addDoodle()V

    .line 1892
    return-void
.end method

.method private startGallery()V
    .locals 5

    .prologue
    .line 1868
    const-string v2, "CreateNewNoteActivity"

    const-string v3, "startGallery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1871
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1872
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1878
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WallpaperListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open gallery failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const v2, 0x7f0900fa

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startHandwrite()V
    .locals 2

    .prologue
    .line 1881
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "startHandwrite"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->addHandWrite()V

    .line 1885
    return-void
.end method

.method private startLocation()V
    .locals 2

    .prologue
    .line 1822
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "startLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startLocationActivity()V

    .line 1825
    return-void
.end method

.method private startRecord()V
    .locals 2

    .prologue
    .line 1829
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "startRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mOnSoundRecorderListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->initSoundRecord(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;)V

    .line 1837
    return-void
.end method

.method private startResource()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1903
    const-string v2, "CreateNewNoteActivity"

    const-string v3, "startResource"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1906
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    const-string v2, "zte.com.cn.filer"

    const-string v3, "zte.com.cn.filer.FilerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1907
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1908
    const-string v2, "supportiveData"

    const-string v3, "attach"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1909
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    :goto_0
    return-void

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1912
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "cloudnotepad.getattach"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1913
    invoke-virtual {p0, v1, v4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 1853
    const-string v3, "CreateNewNoteActivity"

    const-string v4, "startVideo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.durationLimit"

    const/16 v4, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1857
    const-string v3, "android.intent.extra.videoQuality"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "video_temp.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    .line 1859
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1860
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1861
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CreateNewNoteActivity"

    const-string v4, "startVideo Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateActionBar(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 472
    return-void
.end method

.method private updateButtonDisplay()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 428
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 431
    .local v1, mPm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.zte.lbs"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 432
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 438
    .local v0, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 442
    .end local v0           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLocationDisplay()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    invoke-static {v1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getLocationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationImageView:Landroid/widget/ImageView;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->locationMapFileName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    :cond_0
    return-void
.end method


# virtual methods
.method public addEditText(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)Landroid/widget/EditText;
    .locals 6
    .parameter "context"
    .parameter "controlData"
    .parameter "pos"

    .prologue
    .line 738
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mEditTextAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, p1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 739
    .local v1, mEditText:Landroid/widget/EditText;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    iget-object v2, p2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 741
    if-nez p3, :cond_0

    .line 742
    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 743
    const-string v2, "hinttext"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 745
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    .line 746
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1389

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    .line 745
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 747
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;

    invoke-direct {v2, p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 775
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$10;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$10;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 791
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_0
    return-object v1

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CreateNewNoteActivity"

    const-string v3, "addEditText addView Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    goto :goto_0
.end method

.method public getNoteId()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    return v0
.end method

.method public getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    return-object v0
.end method

.method public getRecordFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2094
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2095
    .local v0, oriName:Ljava/lang/String;
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->voiceFileNum:I

    if-lez v1, :cond_0

    .line 2096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->voiceFileNum:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2099
    :cond_0
    return-object v0
.end method

.method public getResourceLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getWallPaperDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mWallpaperDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1919
    const/4 v5, 0x6

    if-ne p1, v5, :cond_3

    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 1920
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1921
    :cond_0
    const v5, 0x7f0900a0

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1959
    :cond_1
    :goto_0
    return-void

    .line 1924
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1925
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "image/*"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    const-string v5, "crop"

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v5

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenWidth()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    double-to-int v4, v5

    .line 1928
    .local v4, width:I
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v5

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    double-to-int v0, v5

    .line 1929
    .local v0, height:I
    const-string v5, "aspectX"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1930
    const-string v5, "aspectY"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    const-string v5, "outputX"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1932
    const-string v5, "outputY"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "wallpaper_temp.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    .line 1935
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->tempFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 1936
    .local v3, uri:Landroid/net/Uri;
    const-string v5, "output"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1937
    const-string v5, "CreateNewNoteActivity"

    const-string v6, "START_WALLPAPER_SET_RESULT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/4 v5, 0x5

    invoke-virtual {p0, v1, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1942
    .end local v0           #height:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #width:I
    :cond_3
    const/4 v5, 0x5

    if-eq p1, v5, :cond_4

    const/16 v5, 0x64

    if-eq p1, v5, :cond_4

    .line 1943
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v5

    const/16 v6, 0x14

    if-lt v5, v6, :cond_4

    .line 1944
    const v5, 0x7f090096

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1947
    :cond_4
    const/4 v5, -0x1

    if-eq p2, v5, :cond_5

    const/16 v5, 0x64

    if-ne p1, v5, :cond_1

    .line 1948
    :cond_5
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_6

    .line 1949
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1950
    const/4 v5, 0x0

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    .line 1952
    :cond_6
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    .line 1953
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;

    invoke-direct {v2, p0, p0, p1, p3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1954
    .local v2, task:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "focusChange"

    .prologue
    .line 2603
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1590
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->onBackPressedAtOtherState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    :goto_0
    return-void

    .line 1593
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isEmptyNote()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1594
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteFiles(ILzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;)V

    .line 1595
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1596
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-static {p0, v0, v1}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteNote(Landroid/content/Context;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    .line 1599
    :cond_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    goto :goto_0

    .line 1600
    :cond_2
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isNoteChanged()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1601
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "no changes when edit note"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    goto :goto_0

    .line 1607
    :cond_3
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->CreateBackAlertDlg()V

    goto :goto_0
.end method

.method public onBackPressedAtOtherState()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1568
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getEditMode()I

    move-result v0

    .line 1569
    .local v0, mode:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 1570
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1571
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->showBackDialog()V

    .line 1583
    :goto_0
    return v1

    .line 1574
    :cond_1
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->updateActionBar(Z)V

    .line 1575
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1576
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    goto :goto_0

    .line 1579
    :cond_2
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getState()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1580
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onCancel()V

    goto :goto_0

    .line 1583
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1669
    const-string v0, "CreateNewNoteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick view="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->hideSoftKeyBoard()V

    .line 1672
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughInternalStorage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1673
    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationButton:Landroid/widget/ImageButton;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_3

    .line 1680
    :cond_2
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startLocation()V

    goto :goto_0

    .line 1683
    :cond_3
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mRecordButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 1684
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1685
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 1687
    :cond_4
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startRecord()V

    goto :goto_0

    .line 1690
    :cond_5
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCameraButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_6

    .line 1691
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startCamera()V

    goto :goto_0

    .line 1698
    :cond_6
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mGalleryButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_7

    .line 1699
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startGallery()V

    goto :goto_0

    .line 1707
    :cond_7
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandwriteButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_9

    .line 1708
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1709
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 1711
    :cond_8
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startHandwrite()V

    goto :goto_0

    .line 1714
    :cond_9
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDoodleButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_b

    .line 1715
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1716
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 1718
    :cond_a
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startDoodle()V

    goto :goto_0

    .line 1721
    :cond_b
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mInsertButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 1722
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->createInsertListPopupWindow()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    const v5, 0x7f03001a

    :try_start_0
    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->onCreate()V

    .line 264
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->clearListData()V

    .line 265
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->initData()V

    .line 266
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->initView()V

    .line 268
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 269
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 270
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 271
    iput v10, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    .line 272
    const-string v5, "text"

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    invoke-static {v5, v6, v7, v8, v9}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v1

    .line 273
    .local v1, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v5, v1, v10}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->insertControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 274
    const-string v5, "CreateNewNoteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STATE_NEW mControlsUtils="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v1           #controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :goto_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->InitalActionBar()V

    .line 289
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->updateButtonDisplay()V

    .line 290
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->initObjectDisplay()V

    .line 291
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->updateLocationDisplay()V

    .line 293
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 294
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    invoke-static {p0, v5}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->setWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 295
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MEDIA_SHARED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSharedIntentFilter:Landroid/content/IntentFilter;

    .line 303
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSharedIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "file"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSharedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSharedIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 307
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    return-void

    .line 258
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 259
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    goto/16 :goto_0

    .line 276
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1
    const-string v5, "id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    .line 277
    const-string v5, "CreateNewNoteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "noteId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    if-lez v5, :cond_2

    .line 279
    const/4 v5, 0x1

    iput v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    .line 280
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->initNote(I)V

    .line 282
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_1

    .line 285
    :cond_2
    iput v10, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mState:I

    goto/16 :goto_1

    .line 299
    :cond_3
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f070002

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 341
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->onDestroy()V

    .line 342
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mHandler:Landroid/os/Handler;

    .line 346
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSharedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->clearData()V

    .line 349
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1659
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    .line 1660
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->hideSoftKeyBoard()V

    .line 1661
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->createObjectPopupWindow(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    .line 1663
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMoveItemSelected(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 1782
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotebookItemPos:I

    .line 1783
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotebookItemPos:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notebookName:Ljava/lang/String;

    .line 1784
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 1561
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotebookItemPos:I

    .line 1562
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mNotebookItemPos:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->notebookName:Ljava/lang/String;

    .line 1563
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1638
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1639
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1641
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1642
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 1646
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1647
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onStop()V

    .line 1650
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1651
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1653
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 316
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTitleLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 318
    sput-boolean v5, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 319
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 320
    .local v0, lAvailableFlash:J
    const-string v2, "CreateNewNoteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lAvailableFlash="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-wide/32 v2, 0x300000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 322
    const/4 v2, 0x1

    sput-boolean v2, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 323
    const v2, 0x7f09009f

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 326
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 327
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onCancel()V

    .line 329
    :cond_0
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v2, v3, v4}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteFiles(ILzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;)V

    .line 330
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->onResume()V

    goto :goto_0
.end method

.method public setCurrentFocusStatus(II)V
    .locals 2
    .parameter "pos"
    .parameter "isEditText"

    .prologue
    .line 700
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 701
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 702
    return-void
.end method

.method public setRenameTitle(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/String;I)V
    .locals 6
    .parameter "controlData"
    .parameter "renameTitle"
    .parameter "pos"

    .prologue
    .line 1158
    iget-object v2, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    iget-object v3, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    iget-object v5, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    invoke-static {v2, v3, p2, v4, v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 1159
    .local v0, newControlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v2, v0, p3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 1160
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1165
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    return-void
.end method

.method public setWallPaperDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 199
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mWallpaperDialog:Landroid/app/AlertDialog;

    .line 200
    return-void
.end method

.method public startLocationActivity()V
    .locals 6

    .prologue
    .line 1787
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1788
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.zte.lbs.SHOW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1790
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1793
    const/4 v2, 0x0

    .line 1794
    .local v2, root:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1795
    .end local v2           #root:Lorg/json/JSONObject;
    .local v3, root:Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "InitLocation"

    const-string v5, "SpecificLocation"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1796
    const-string v4, "MapParam"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1817
    .end local v3           #root:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/16 v4, 0x64

    invoke-virtual {p0, v1, v4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1818
    return-void

    .line 1797
    .restart local v2       #root:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1800
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1797
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #root:Lorg/json/JSONObject;
    .restart local v3       #root:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #root:Lorg/json/JSONObject;
    .restart local v2       #root:Lorg/json/JSONObject;
    goto :goto_1
.end method
