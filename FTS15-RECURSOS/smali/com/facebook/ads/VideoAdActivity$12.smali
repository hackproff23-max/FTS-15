.class Lcom/facebook/ads/VideoAdActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/VideoAdActivity;->configureViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/VideoAdActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity$12;->a:Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$12;->a:Lcom/facebook/ads/VideoAdActivity;

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$a;->e:Lcom/facebook/ads/VideoAdActivity$a;

    invoke-static {v0, v1}, Lcom/facebook/ads/VideoAdActivity;->access$1100(Lcom/facebook/ads/VideoAdActivity;Lcom/facebook/ads/VideoAdActivity$a;)V

    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$12;->a:Lcom/facebook/ads/VideoAdActivity;

    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$300(Lcom/facebook/ads/VideoAdActivity;)V

    return-void
.end method
