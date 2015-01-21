.class Lcom/android/launcher2/Launcher$PendingChangedApplications;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingChangedApplications"
.end annotation


# static fields
.field public static final TYPE_ADDED:I = 0x0

.field public static final TYPE_REMOVED:I = 0x2

.field public static final TYPE_UPDATED:I = 0x1


# instance fields
.field appInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field removedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field type:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5163
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5164
    iput-object p1, p0, Lcom/android/launcher2/Launcher$PendingChangedApplications;->appInfos:Ljava/util/ArrayList;

    .line 5165
    iput p2, p0, Lcom/android/launcher2/Launcher$PendingChangedApplications;->type:I

    .line 5166
    return-void
.end method
