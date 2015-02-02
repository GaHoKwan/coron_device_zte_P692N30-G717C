.class public Lcom/dolby/ds1appCoreUI/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field public static final mDecFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "@@##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolby/ds1appCoreUI/Tools;->mDecFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static floatArrayToString([F)Ljava/lang/String;
    .locals 5
    .parameter "arr"

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_0
    sget-object v2, Lcom/dolby/ds1appCoreUI/Tools;->mDecFormat:Ljava/text/DecimalFormat;

    aget v3, p0, v0

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hideVirtualKeyboard(Landroid/app/Activity;)Z
    .locals 5
    .parameter "currentActivity"

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, keyboardHidden:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, currentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 79
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v2

    .line 82
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v2
.end method

.method public static isLandscapeScreenOrientation(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static killMyself(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 52
    .local v0, am:Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 53
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 60
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :goto_1
    return-void

    .line 61
    :catch_0
    move-exception v1

    goto :goto_1

    .line 54
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final lcm(II)I
    .locals 6
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 30
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot compute the least common multiple of two numbers if one, at least,is negative."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_1
    if-le p0, p1, :cond_2

    .line 34
    move v1, p0

    .line 35
    .local v1, max:I
    move v2, p1

    .line 40
    .local v2, min:I
    :goto_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-gt v0, v2, :cond_4

    .line 41
    mul-int v3, v1, v0

    rem-int/2addr v3, v2

    if-nez v3, :cond_3

    .line 42
    mul-int v3, v0, v1

    return v3

    .line 37
    .end local v0           #i:I
    .end local v1           #max:I
    .end local v2           #min:I
    :cond_2
    move v1, p1

    .line 38
    .restart local v1       #max:I
    move v2, p0

    .restart local v2       #min:I
    goto :goto_0

    .line 40
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_4
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find the least common multiple of numbers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static showVirtualKeyboard(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 66
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 67
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 68
    return-void
.end method

.method public static showVirtualKeyboard(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 72
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 73
    return-void
.end method
