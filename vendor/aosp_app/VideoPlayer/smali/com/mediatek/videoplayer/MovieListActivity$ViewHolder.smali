.class public Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
.super Ljava/lang/Object;
.source "MovieListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/MovieListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mData:Ljava/lang/String;

.field mDateModified:J

.field mDateTaken:J

.field mDuration:J

.field mDurationView:Landroid/widget/TextView;

.field mFastDrawable:Lcom/mediatek/videoplayer/FastBitmapDrawable;

.field mFileSize:J

.field mFileSizeView:Landroid/widget/TextView;

.field mIcon:Landroid/widget/ImageView;

.field mId:J

.field mIsDrm:Z

.field mMimetype:Ljava/lang/String;

.field mSupport3D:Z

.field mTitle:Ljava/lang/String;

.field mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/videoplayer/MovieListActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/videoplayer/MovieListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    .locals 3

    .prologue
    .line 668
    new-instance v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-direct {v0, v1}, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;-><init>(Lcom/mediatek/videoplayer/MovieListActivity;)V

    .line 669
    .local v0, holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    iget-wide v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mId:J

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mId:J

    .line 670
    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    .line 671
    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    .line 672
    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mData:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mData:Ljava/lang/String;

    .line 673
    iget-wide v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDuration:J

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDuration:J

    .line 674
    iget-wide v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDateTaken:J

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDateTaken:J

    .line 675
    iget-wide v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFileSize:J

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFileSize:J

    .line 676
    iget-boolean v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIsDrm:Z

    iput-boolean v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIsDrm:Z

    .line 677
    iget-wide v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDateModified:J

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDateModified:J

    .line 678
    iget-boolean v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mSupport3D:Z

    iput-boolean v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mSupport3D:Z

    .line 679
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->clone()Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewHolder(mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDrm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIsDrm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupport3D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mSupport3D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
