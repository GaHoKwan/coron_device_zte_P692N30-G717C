.class final Lcom/android/launcher2/LauncherModel$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0
    .parameter

    .prologue
    .line 3458
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$7;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 3460
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$7;->val$collator:Ljava/text/Collator;

    iget-object v2, p1, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3461
    .local v0, result:I
    if-nez v0, :cond_0

    .line 3462
    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    .line 3464
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3458
    check-cast p1, Lcom/android/launcher2/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/android/launcher2/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$7;->compare(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v0

    return v0
.end method