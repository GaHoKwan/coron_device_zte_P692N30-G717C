.class public Laxp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field static final synthetic a:Z


# instance fields
.field private a:[Landroid/graphics/drawable/Drawable;

.field private a:[Lawo;

.field private a:[Ljava/lang/String;

.field private b:Z

.field private b:[Landroid/graphics/drawable/Drawable;

.field private b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Laxp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laxp;->a:Z

    .line 9
    const-string v0, "SettingsImage"

    sput-object v0, Laxp;->a:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Layx;Lawm;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v5, p0, Laxp;->b:Z

    .line 82
    const/16 v0, 0xb

    new-array v0, v0, [Lawo;

    const-string v1, "Settings_SlipButton_Image"

    const-string v2, "FG_STYLE"

    invoke-static {p1, v1, v2, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Settings_SlipButton_Square"

    const-string v2, "FG_STYLE"

    invoke-static {p1, v1, v2, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Cloud_Input_Switch_Area_Frame"

    const-string v2, "FG_STYLE"

    invoke-static {p1, v1, v2, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Cloud_Input_Switch_Left"

    const-string v2, "FG_STYLE"

    invoke-static {p1, v1, v2, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Cloud_Input_Switch_Middle"

    const-string v3, "FG_STYLE"

    invoke-static {p1, v2, v3, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Cloud_Input_Switch_Right"

    const-string v3, "FG_STYLE"

    invoke-static {p1, v2, v3, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Slip_Button_Transparent_Layer"

    const-string v3, "FG_STYLE"

    invoke-static {p1, v2, v3, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Slip_Button_Boundary"

    const-string v3, "FG_STYLE"

    invoke-static {p1, v2, v3, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Pop_Window_Trangle"

    const-string v3, "FG_STYLE"

    invoke-static {p1, v2, v3, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IME_Function_Switch_Horizontal_Line"

    const-string v3, "FG_STYLE"

    invoke-static {p1, v2, v3, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IME_Function_Switch_Vertical_Line"

    const-string v3, "FG_STYLE"

    invoke-static {p1, v2, v3, v6}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawo;)Lawo;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxp;->a:[Lawo;

    .line 96
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "Settings_SlipButton_Image"

    const-string v2, "ICON"

    invoke-static {p1, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Settings_SlipButton_Square"

    const-string v2, "ICON"

    invoke-static {p1, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Cloud_Input_Switch_Area_Frame"

    const-string v2, "ICONS"

    invoke-static {p1, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Cloud_Input_Switch_Left"

    const-string v2, "ICON"

    invoke-static {p1, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Cloud_Input_Switch_Middle"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Cloud_Input_Switch_Right"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Slip_Button_Transparent_Layer"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Slip_Button_Boundary"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Pop_Window_Trangle"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IME_Function_Switch_Horizontal_Line"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IME_Function_Switch_Vertical_Line"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxp;->a:[Landroid/graphics/drawable/Drawable;

    .line 111
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "Settings_SlipButton_Image"

    invoke-static {p1, v1, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Settings_SlipButton_Square"

    invoke-static {p1, v1, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Cloud_Input_Switch_Area_Frame"

    invoke-static {p1, v1, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Cloud_Input_Switch_Left"

    invoke-static {p1, v1, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Cloud_Input_Switch_Middle"

    invoke-static {p1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Cloud_Input_Switch_Right"

    invoke-static {p1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Slip_Button_Transparent_Layer"

    invoke-static {p1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Slip_Button_Boundary"

    invoke-static {p1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Pop_Window_Trangle"

    invoke-static {p1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IME_Function_Switch_Horizontal_Line"

    invoke-static {p1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IME_Function_Switch_Vertical_Line"

    invoke-static {p1, v2, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxp;->b:[Landroid/graphics/drawable/Drawable;

    .line 126
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Settings_SlipButton_Image"

    const-string v2, "LABEL"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Settings_SlipButton_Square"

    const-string v2, "LABEL"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Cloud_Input_Switch_Area_Frame"

    const-string v2, "LABEL"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Cloud_Input_Switch_Left"

    const-string v2, "LABEL"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Cloud_Input_Switch_Middle"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Cloud_Input_Switch_Right"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Slip_Button_Transparent_Layer"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Slip_Button_Boundary"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Pop_Window_Trangle"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IME_Function_Switch_Horizontal_Line"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IME_Function_Switch_Vertical_Line"

    const-string v3, "LABEL"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxp;->a:[Ljava/lang/String;

    .line 140
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Settings_SlipButton_Image"

    const-string v2, "LABEL2"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Settings_SlipButton_Square"

    const-string v2, "LABEL2"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Cloud_Input_Switch_Area_Frame"

    const-string v2, "LABEL2"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Cloud_Input_Switch_Left"

    const-string v2, "LABEL2"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Cloud_Input_Switch_Middle"

    const-string v3, "LABEL2"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Cloud_Input_Switch_Right"

    const-string v3, "LABEL2"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Slip_Button_Transparent_Layer"

    const-string v3, "LABEL2"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Slip_Button_Boundary"

    const-string v3, "LABEL2"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Pop_Window_Trangle"

    const-string v3, "LABEL2"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IME_Function_Switch_Horizontal_Line"

    const-string v3, "LABEL2"

    invoke-static {p1, v2, v3, v6}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IME_Function_Switch_Vertical_Line"

    const-string v3, "LABEL2"

    invoke-static {p1, v2, v3, v6}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laxp;->b:[Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 40
    sget-boolean v0, Laxp;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_1
    iget-object v0, p0, Laxp;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    sget-boolean v0, Laxp;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_1
    iget-object v0, p0, Laxp;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Laxp;->a:[Lawo;

    .line 75
    iput-object v0, p0, Laxp;->a:[Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v0, p0, Laxp;->b:[Landroid/graphics/drawable/Drawable;

    .line 77
    iput-object v0, p0, Laxp;->a:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxp;->b:Z

    .line 79
    return-void
.end method
