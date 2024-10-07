import {Redirect} from '@docusaurus/router';
import useBaseUrl from '@docusaurus/useBaseUrl';

export default function Home(): JSX.Element {
  return <Redirect to={useBaseUrl('/docs/gateway2gegevenslogger')} />;
}
