.class public final Lapr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CandidateView:[I = null

.field public static final CandidateView_candidateViewStyle:I = 0x0

.field public static final CandidateView_columns:I = 0x1

.field public static final CandidateView_rows:I = 0x2

.field public static final CandidateView_tag:I = 0x3

.field public static final GuideAction:[I = null

.field public static final GuideAction_guideActionAuto:I = 0x3

.field public static final GuideAction_guideActionCode:I = 0x0

.field public static final GuideAction_guideActionDownDelay:I = 0x4

.field public static final GuideAction_guideActionEnd:I = 0x2

.field public static final GuideAction_guideActionGuideEnd:I = 0x7

.field public static final GuideAction_guideActionMsg:I = 0x6

.field public static final GuideAction_guideActionType:I = 0x1

.field public static final GuideAction_guideActionUpDelay:I = 0x5

.field public static final PixelPreference:[I = null

.field public static final PixelPreference_entries:I = 0x0

.field public static final PixelPreference_entryValues:I = 0x1

.field public static final RadioGroupPreference:[I = null

.field public static final RadioGroupPreference_entryValue:I = 0x0

.field public static final RadioGroupPreference_groupKey:I = 0x1

.field public static final SohuOverlayView:[I = null

.field public static final SohuOverlayView_eventsInterceptionEnabled:I = 0x9

.field public static final SohuOverlayView_fadeDuration:I = 0x4

.field public static final SohuOverlayView_fadeEnabled:I = 0xa

.field public static final SohuOverlayView_fadeOffset:I = 0x3

.field public static final SohuOverlayView_gestureColor:I = 0x1

.field public static final SohuOverlayView_gestureStrokeAngleThreshold:I = 0x8

.field public static final SohuOverlayView_gestureStrokeLengthThreshold:I = 0x6

.field public static final SohuOverlayView_gestureStrokeSquarenessThreshold:I = 0x7

.field public static final SohuOverlayView_gestureStrokeType:I = 0x5

.field public static final SohuOverlayView_gestureStrokeWidth:I = 0x0

.field public static final SohuOverlayView_orientation:I = 0xb

.field public static final SohuOverlayView_uncertainGestureColor:I = 0x2

.field public static final VolumeBarPreference:[I = null

.field public static final VolumeBarPreference_causeKBDCreate:I = 0x1

.field public static final VolumeBarPreference_leftLabel:I = 0x2

.field public static final VolumeBarPreference_maxValue:I = 0x0

.field public static final VolumeBarPreference_rightLabel:I = 0x3

.field public static final Workspace:[I

.field public static final Workspace_defaultScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 3440
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lapr;->CandidateView:[I

    .line 3529
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lapr;->GuideAction:[I

    .line 3657
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lapr;->PixelPreference:[I

    .line 3694
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lapr;->RadioGroupPreference:[I

    .line 3757
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lapr;->SohuOverlayView:[I

    .line 3952
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lapr;->VolumeBarPreference:[I

    .line 4021
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010020

    aput v2, v0, v1

    sput-object v0, Lapr;->Workspace:[I

    return-void

    .line 3440
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3529
    :array_1
    .array-data 0x4
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
        0x1at 0x0t 0x1t 0x7ft
        0x1bt 0x0t 0x1t 0x7ft
        0x1ct 0x0t 0x1t 0x7ft
        0x1dt 0x0t 0x1t 0x7ft
        0x1et 0x0t 0x1t 0x7ft
        0x1ft 0x0t 0x1t 0x7ft
    .end array-data

    .line 3657
    :array_2
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 3694
    :array_3
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3757
    :array_4
    .array-data 0x4
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3952
    :array_5
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data
.end method
